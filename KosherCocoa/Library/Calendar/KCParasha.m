//
//  KCParasha.m
//  KosherCocoa
//
//  Created by Moshe Berman on 5/10/13.
//  Copyright (c) 2013 Moshe Berman. All rights reserved.
//

#import "KCParasha.h"

@interface KCParasha ()
@property (nonatomic, strong) NSArray *names;
@property (nonatomic, strong) NSArray *transliteratedNames;
@property (nonatomic, assign) KCParashaIdentifier _identifier;
@end

@implementation KCParasha

- (id)init
{
    self = [super init];
    if (self) {
        _transliteratedNames =  @[@"Bereshit",
                                  @"Noach",
                                  @"Lech Lecha",
                                  @"Vayeira",
                                  @"Chayei Sarah",
                                  @"Toldot",
                                  @"Vayeitsei",
                                  @"Vayishlach",
                                  @"Vayeishev",
                                  @"Miketz",
                                  @"Vayigash",
                                  @"Vayechi",
                                  
                                  @"Shemot",
                                  @"Va'era",
                                  @"Bo",
                                  @"Beshalach",
                                  @"Yitro",
                                  @"Mishpatim",
                                  @"Terumah",
                                  @"Tetzaveh",
                                  @"Terumah - Tetzaveh",
                                  @"Ki Tissa",
                                  @"Vayakhel",
                                  @"Pekudei",
                                  @"Vayakhel - Pekudei",
                                  
                                  @"Vayikra",
                                  @"Tzav",
                                  @"Shemini",
                                  @"Tazria",
                                  @"Metzora",
                                  @"Tazria - Metzorah",
                                  @"Acharei Mot",
                                  @"Kedoshim",
                                  @"Acharei Mot - Kedoshim",
                                  @"Emor",
                                  @"Behar",
                                  @"Bechukotai",
                                  @"Behar - Bechukotai",
                                  
                                  @"Bamidbar",
                                  @"Naso",
                                  @"Beha'alotecha",
                                  @"Shelach",
                                  @"Korach",
                                  @"Chukat",
                                  @"Balak",
                                  @"Chukat - Balak",
                                  @"Pinchas",
                                  @"Matot",
                                  @"Masei",
                                  @"Matot - Masei",
                                  
                                  @"Devarim",
                                  @"Va'etchanan",
                                  @"Eikev",
                                  @"Re'eh",
                                  @"Shoftim",
                                  @"Ki Teitzei",
                                  @"Ki Tavo",
                                  @"Nitzavim",
                                  @"Vayeilech",
                                  @"Nitzavim - Vayeilech",
                                  @"Ha'azinu",
                                  @"Vezot Haberacha",
                                  
                                  @"Rosh Hashana",
                                  @"Yom Kippur",
                                  @"Sukkot 1",
                                  @"Chol Hamoed Sukkot",
                                  @"Shmini Atzeret",
                                  @"Pesach 1",
                                  @"Chol Hamoed Pesach",
                                  @"Pesach 7",
                                  @"Pesach 8",
                                  @"Shavuot 2"];
        
        _names = @[@"בראשית",
                   @"נח",
                   @"לך לך",
                   @"וירא",
                   @"חיי שרה",
                   @"תולדות",
                   @"ויצא",
                   @"וישלח",
                   @"וישב",
                   @"מקץ",
                   @"ויגש",
                   @"ויחי",
                   
                   @"שמות",
                   @"וארא",
                   @"בא",
                   @"בשלח",
                   @"יתרו",
                   @"משפטים",
                   @"תרומה",
                   @"תצוה",
                   @"תרומה - תצוה",
                   @"כי תשא",
                   @"ויקהל",
                   @"פקודי",
                   @"ויקהל - פקודי",
                   
                   @"ויקרא",
                   @"צו",
                   @"שמיני",
                   @"תזריע",
                   @"מצורע",
                   @"תזריע - מצורע",
                   @"אחרי מות",
                   @"קדושים",
                   @"אחרי מות - קדושים",
                   @"אמור",
                   @"בהר",
                   @"בחקתי",
                   @"בהר - בחקתי",
                   
                   @"במדבר",
                   @"נשא",
                   @"בהעלותך",
                   @"שלח",
                   @"קרח",
                   @"חקת",
                   @"בלק",
                   @"חקת - בלק",
                   @"פינחס",
                   @"מטות",
                   @"מסעי",
                   @"מטות - מטות",
                   
                   @"דברים",
                   @"ואתחנן",
                   @"עקב",
                   @"ראה",
                   @"שופטים",
                   @"כי תצא",
                   @"כי תבוא",
                   @"נצבים",
                   @"וילך",
                   @"נצבים - וילך",
                   @"האזינו",
                   @"וזאת הברכה",
                   
                   @"א' ראש השנה",
                   @"יום כיפור",
                   @"א' סוכות",
                   @"חוה\"מ סוכות",
                   @"שמיני עצרת",
                   @"א' פסח",
                   @"חוה\"מ פסח",
                   @"ז' פסח",
                   @"ח' פסח",
                   @"ב' שבועות"];
    }
    return self;
}

- (id)initWithIdentifier:(KCParashaIdentifier)identifier
{
    self = [self init];
    if (self) {
        _identifier = identifier;
    }
    return self;
}

+ (id)parashaWithIdentifier:(KCParashaIdentifier)identifier
{
    return [[KCParasha alloc] initWithIdentifier:identifier];
}

#pragma mark - Display Names

/* Returns the hebrew name of the parasha */
- (NSString *)name
{
    return [self names][_identifier];
}

/* Returns the transliterated name of the parasha */
- (NSString *)nameTransliterated
{    
    return [self transliteratedNames][_identifier];
}

#pragma mark - Description

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ : %@", [super description], [self nameTransliterated]];
}
@end