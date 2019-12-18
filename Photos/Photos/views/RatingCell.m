//
//  RatingCell.h
//  objc.io example project (issue #1)
//


#import "RatingCell.h"


static const int MaximumNumberOfStars = 5;
static const float InactiveStarOpacity = .2;


@implementation RatingCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        for (int i=0; i<MaximumNumberOfStars; i++) {
            UIImageView *star = [[UIImageView alloc] init];
            star.tag = i;
            star.image = [UIImage imageNamed:@"star"];
            CGFloat width = CGRectGetWidth([UIScreen mainScreen].bounds) / ((float)MaximumNumberOfStars);
            star.frame = CGRectMake(0 + width * i, 0, width, 60);
            star.userInteractionEnabled = true;
            [star addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)]];
            [self.contentView addSubview:star];
        }
    }
    return self;
}

- (void)setRating:(double)rating
{
    if (_rating == rating) return;

    _rating = rating;
    [self updateForRating:rating];
}

- (void)updateForRating:(double)rating
{
    NSUInteger numberOfStars = (NSUInteger) ceilf((float) (rating * MaximumNumberOfStars));
    for (NSUInteger idx = 0; idx < MaximumNumberOfStars; idx++) {
        UIView *starView = self.contentView.subviews[idx];
        starView.alpha = numberOfStars > idx ? 1 : InactiveStarOpacity;
    }
}

- (void)tapAction:(UITapGestureRecognizer *)tap {
    if ([_delegate respondsToSelector:@selector(didClickStarWithRate:indexPath:)]) {
        [_delegate didClickStarWithRate:1 indexPath:_indexPath];
    };
}
@end
