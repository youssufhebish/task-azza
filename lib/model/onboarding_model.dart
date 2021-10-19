class OnboardingModel{

  final String title;
  final String body;
  final String image;

  OnboardingModel({
    required this.title,
    required this.body,
    required this.image,
  });
}

List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: 'نقدم لك خدمات التسويق العقاري الشاملة',
    body: 'منصة متخصصة في بيع وشراء وتاجير العقارات لحساب الغير',
    image: 'assets/images/onboarding/01.png',
  ),
  OnboardingModel(
    title: 'مستشارك العقاري الخاص',
    body: 'استشارات عقارية متوافقه مع الانظمة الصادرة من الهيئة العامة العقار',
    image: 'assets/images/onboarding/02.png',
  ),
  OnboardingModel(
    title: 'إعلانات مبوبة من جميع مناطق المملكة',
    body: 'لا تشيل هم الوساطة، نقدملك إعلانات تغطي جميع إحتياجاتك',
    image: 'assets/images/onboarding/03.png',
  ),
];