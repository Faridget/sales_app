mixin AppLocale {
  static const String title = 'title';
  static const String thisIs = 'thisIs';

  static   Map<String, dynamic> EN = {
    title: 'Localization',
    thisIs: 'This is %a package, version %a.',
  };
  static   Map<String, dynamic> KM = {
    title: 'ការធ្វើមូលដ្ឋានីយកម្ម',
    thisIs: 'នេះគឺជាកញ្ចប់%a កំណែ%a.',
  };
  static const Map<String, dynamic> AR = {
    title: 'الاعدادت',
    thisIs: 'هذة  %a صفحة الاعدادت',
  };
}