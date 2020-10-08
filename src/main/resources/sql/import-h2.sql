ALTER TABLE POST
  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP;

-- Users
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user@mail.com', 'user', 'Name', 'Surname',
   1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'harun@gmail.com', 'harung', 'Harun', 'Günaltay', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'selen@mail.com', 'selen', 'Selen', 'Koçak', 1);

-- Roles
INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');

-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);

-- Posts
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (1, 1, 'AWS de Docker Çalıştırma',
        ' AWS, hem açık kaynak kodlu hem de ticari Docker çözümlerini destekler. Yüksek oranda ölçeklenebilir, yüksek performanslı bir container yönetim hizmeti olan Amazon Elastic Container Service (ECS) dâhil olmak üzere AWS''de container çalıştırmanın çeşitli yolları vardır. Müşteriler yerel Docker ortamlarından container’lı uygulamalarını kolay bir şekilde doğrudan Amazon ECS’ye dağıtabilirler. Amazon ECS''ye yönelik olan AWS Fargate, altyapı dağıtmanıza veya yönetmenize gerek kalmadan üretimde container çalıştırmanıza imkan sağlayan bir teknolojidir. Amazon Elastic Container Service for Kubernetes (EKS), AWS üzerinde Kubernetes çalıştırmanızı kolaylaştırır. Amazon ECS''ye yönelik olan AWS Fargate, sunucu tedarik etmenize veya yönetmenize gerek kalmadan container çalıştırmanıza imkan tanıyan bir teknolojidir. Amazon Elastic Container Registry (ECR), Docker container görüntülerinizi depolayıp yönetmeyi, bekleyen görüntülerin hızla çekilebilmesi ve güvenli olması için bunları şifreleyip sıkıştırmayı kolaylaştıran, yüksek oranda erişilebilir ve güvenli bir özel container deposudur. AWS Batch, Docker container''larını kullanarak yüksek oranda ölçeklenebilir toplu işleme iş yüklerini çalıştırmanıza imkan tanır. ',
        --         CURRENT_TIMESTAMP());
        {ts '2019-10-19 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (2, 1, 'Spring Boot Nedir?',
        '"Spring Boot, Spring tabanlı uygulama geliştirmenin en hızlı ve kolay yolu olması amacıyla geliştirilmiş bir frameworktür. Spring Boot sayesinde boilerplate yani basmakalıp kodlardan sıyrılıp, sadece ihtiyacımız olan kodu yazıyoruz (only write code that you need to). Spring Boot web sunucusu olarak Tomcat ve diğer birçok ek özellikle beraber geliyor.
Spring Boot’un sağladığı en büyük avantajlardan biri ise sizi herhangi bir XML konfigürasyonuyla uğraşmak zorunda bırakmaması."',
        --         CURRENT_TIMESTAMP());
        {ts '2019-12-10 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (3, 1, 'Hibernate',
        'Hibernate, Java platformunda yazılmış bir ORM (Object/Relational Mapping) aracıdır. ORM, nesne odaklı (object oriented) dillerdeki nesnelerin, ilişkisel veri tabanlarındaki (relational databases) kayıtlara nasıl karşılık geldiğini yürüten bir teknolojidir. NHibernate adında .NET çatısı için yeniden yazılmış bir türevi bulunur.

Hibernate gibi ORM araçlarıyla, bir nesneyi veri tabanına kaydetmek, yeni halini güncellemek ve sorgulama yapmak düz SQL bağlantılarına göre çok kolaydır."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (4, 1, 'H2 Database',
        'H2 , Java ile yazılmış bir ilişkisel veritabanı yönetim sistemidir . Java uygulamalarına gömülebilir veya istemci-sunucu modunda çalıştırılabilir. SQL (Yapılandırılmış Sorgu Dili) standardının bir alt kümesi desteklenmektedir. Ana programlama API''leri SQL ve JDBC''dir , ancak veritabanı aynı zamanda bir PostgreSQL sunucusu gibi davranarak PostgreSQL ODBC sürücüsünün kullanılmasını da destekler . [2]

Hem bellek içi tablolar hem de disk tabanlı tablolar oluşturmak mümkündür. Tablolar kalıcı veya geçici olabilir. Dizin türleri, bellek içi tablolar için karma tablo ve ağaç ve disk tabanlı tablolar için b-ağacıdır . Tüm veri işleme operasyonları işlemseldir . Tablo seviyesinde kilitleme ve çoklu eşzamanlılık kontrolü uygulanmaktadır. 2 fazlı taahhüt protokolü de desteklenir, ancak dağıtılmış işlemler için standart API uygulanmaktadır. Veritabanının güvenlik özellikleri şunlardır: role dayalı erişim hakları, parolanın SHA-256 kullanılarak şifrelenmesi ve AES veya Tiny Encryption Algorithm, XTEA kullanılarak veriler. Kriptografik özellikler, veritabanının içinde işlevler olarak da mevcuttur. SSL / TLS bağlantıları, hem istemci-sunucu modunda hem de konsol uygulaması kullanılırken desteklenir.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (5, 1, 'MVC',
        'İlk olarak MVC yapısından bahsedecek olursam, MVC ‘nin açılımı Model-View-Controller ‘dir. System.Web.MVC kütüphanesini kullanır.  Bu kavramları da açacak olursak;

Model: Veritabanına erişim, sınıflar(class),veritabanı ilişkileri gibi data ile ilgili işlemlerin yanısıra, Entity Framework, Linq tol Sql, NHibernate, Ado.Net gibi frameworkleri içerisinde bulunduran katmandır.  Kısacası data(veri) işlemleri bu katmanda gerçekleşir.

View: Bu katman kullanıcının ekranda gördüğü katman olarak adlandılır. Bu kısımda Html,Css,Javascript arayüz teknolojileri kullanılır.

Controller: Kullanıcının View vasıtasıyla verdiği komutların, Model işlenmesini sağlayan katmandır. Kısacası Model ile View arasındaki katmandır. Metotlar,değişkenler , fonksiyonlar  buradan çağrılarak kullanılır."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (6, 1, 'ORM (Object Relational Mapping)',
        'ORM, kabaca veri yapılarının uygulama tarafında sınıf olarak ifade edildiği, uygulamanın veritabanından soyutlanmasını sağlayan bir teknoloji. Uygulama dahilinde ORM kullanılması durumunda, veritabanı spesifik komutlar kullanmak yerine ORM in kullanıldığı dilde programlama yaparak sorgulama veya güncelleme işlemleri gerçekleştirilir. Ayrıca ORM in getirdiği soyutlama, bilinen güvenlik sorunlarını da daha alt seviyede çözdüğü için programcının yaptığı her işlemde güvenlik kaygısı altında programlama yapmasının önüne geçer. Genellikle sorgu üretimi nihai noktada gerçekleştiğinden bazı durumlarda hakikaten daha optimistik veritabanı sorguları ürettiği gerçektir. ORM kullanılan uygulamalarda veritabanı spesifik programlama yapılmadığı için farklı bir veritabanına migration durumunda teoride uygulamada herhangibir değişiklik gerçkekleştirmeye gerek yoktur *. Bu olumlu yanları dışında ORM in veri çekme sırasında, veritabanından alınan herbir kaydı uygulama tarafında bir sınıfa cast ettiğini düşünürseniz, birkaç milyon kayıt içeren bir tablodan ORM kullanarak veri çekmenin kaynak tüketimi konusunda sorun olabileceği ve bu nedenle bazen ORM i delmek zorunda kalınabileceği unutulmaması gereken bir gerçektir.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (7, 2, 'Neden Thymeleaf?',
        'Thymeleaf; açık kaynak kodlu ve kendini kanıtlamış, eklentiler (dialects) ile özelleştirilebilen, Spring Boot ve diğer Spring Framework projeleriyle tam uyumlu bir şablon motorudur.
Bunların yanı sıra, benim tercih etmemdeki en etkili sebep; XML ad uzayları ile direkt HTML etiketine uygulanması, dolayısıyla da sunum tarafındaki gereksiz kalabalıktan arındırması oldu.' ||
        '
Thymeleaf, th ad uzayını kullanır. Diğer eklentileri için farklı ad uzayları vardır. Ad uzayları yerine, HTML 5 ile gelen data attributes da kullanılabilir. Bunun için th:each yerine, data-th-each şeklinde yazılmalıdır.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (8, 2, 'Java Server Faces Nedir? JSF Nedir',
        'Java Server Faces bir çatıdır. JSP’den farklı olarak kullanıcı arayüzü sağlanmaktadır. Hazır bileşenler/etiketler ile (tag) yapmak istediğimiz işlemleri basitçe yapabilmekteyiz. Üst seviyede programlar yapmayı kolay hale getirmektedir. İleriki derslerde göreceğimiz JAVA EE teknolojilerine kolayca entegre etmemizde mümkündür. JSF’de farklı kütüphanler ile farklı arayüzler bulabilmekteyiz. Bu kütüphaneleri ekledikçe kodlama tekniğide geliştirene göre değişebilmektedir.

Java Server Faces‘in geneli olaylara dayanmaktadır. Tıklandığında/yapıldığında gibi eylemlere tepki verebilmektedir. Java Server Pages’e göre en büyük artısı ajax’a kolayca hükmedebilmemiz. (JSP’de Ajax için çok uğraşmıştım (: ) Java Server Faces öğrenmek ileriye dönük bir yatırımdır. Çok katmanlı mimariler için JSF bizim avantajımıza olduğunu düşünmekteyim.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (9, 2, 'Maven',
        'Maven, POM(Project Object Model)’a dayanan güçlü bir proje yönetim aracıdır. Proje oluşturma, bağımlılık ve dokümantasyon için kullanılır. ANT gibi derleme işlemini basitleştirir. Ancak ANT’den çok daha ileri bir teknolojidir.
Kısacası, Maven için herhangi bir Java tabanlı projeyi oluşturmak ve yönetmek için kullanılabilecek bir araçtır demek çokta yanlış olmayacaktır. Maven, Java geliştiricilerinin günlük işlerini kolaylaştırır ve genellikle herhangi bir Java tabanlı projenin anlaşılmasına yardımcı olur. Peki Maven’ın yardımcı olduğu temel noktalar nelerdi?
Projeleri kolayca build edebiliriz
Hiç zorlanmadan JAR, WAR gibi istediğimiz paket formatında projeyi derleyebiliriz
Projenin bağımlılıklarını kolayca yönetebiliriz
Proje hakkında meta bilgilerini tutabiliriz
Projeleri Kaynak Kodu Yönetim Sistemlerine(Git, SVN) kolayca entegre edebiliriz',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (10, 2, 'Spring Security',
        'Spring Security, güçlü ve oldukça özelleştirilebilir bir kimlik doğrulama ve erişim denetimi çerçevesidir. Yay tabanlı uygulamaların güvenliğini sağlamak için fiili standarttır.

Spring Security, Java uygulamalarına hem kimlik doğrulama hem de yetkilendirme sağlamaya odaklanan bir çerçevedir. Tüm Spring projeleri gibi, Spring Security''nin gerçek gücü, özel gereksinimleri karşılamak için ne kadar kolay genişletilebileceğinde bulunur.' ||
        'Özellikleri
Hem Kimlik Doğrulama hem de Yetkilendirme için kapsamlı ve genişletilebilir destek

Oturum sabitleme, tıklama korsanlığı, siteler arası istek sahteciliği vb. Saldırılara karşı koruma

Servlet API entegrasyonu

Spring Web MVC ile isteğe bağlı entegrasyon ve daha fazlası.

',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (11, 3, 'JVM(Java Virtual Machine)',
        'JVM(Java Virtual Machine) için java programının çalıştığı platform ile java programı arasında soyut bir ara katman diyebiliriz. JVM; platforma bağımlı olarak çalışır. Yani geliştirme yapacağınız platforma(Windows,Linux,Mac) göre farklı implementasyonları mevcuttur. JVM; bizim yazdığımız .java uzantılı dosyaları anlamaz onun yerine derlenmiş .class uzantılı dosyaları anlar. Çünkü .class uzantılı dosyalar içlerinde bytecode lar içerirler. Bu özelik sayesinde Java da “Write once,Run everywhere” özeliğini kullanabiliyoruz. Yani bu şu demek oluyor; bizim windows bir makinede yazmış olduğumuz uygulama önce Compiler tarafından bytecode lara çevriliyor daha sonra bu bytecode lar diğer platformlarda kurulu olan JVM ler aracılığıyla tüm platformlarda çalışıyor.',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (12, 3, 'JRE(Java Runtime Enviroment)',
        'JRE(Java Runtime Enviroment) , java programlama dili ile yazılmış olan uygulama ve appletlerin çalışmasını sağlayan bileşenler ile JVM e kütüphaneler sağlar.Derlenmiş bytecodelar direk olarak CPU üzerinde çalışmazlar. CPU tarafından anlaşılması için aradaki JVM bytecode ları okunabilir makine kodları olarak yorumlar. Aslında; java bytecode ların bütün platformalarda çalışması JRE sayesindedir. İçerisinde; JVM, Core kitaplıkları ve Java yazılımında yazılan uygulamaları ve küçük uygulamaları çalıştırmak için diğer ek bileşenleri içerir. JRE’nin görevi Java kodları derlendikten sonra bir ara dil olarak kabul edilen Java bayt kodlarını oluşturmaktır. Bu bayt kodlar bütün işletim sistemleri için aynıdır.',
        CURRENT_TIMESTAMP());

-- Comments
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 1,
        '"Yazıyla beraber sorularıma cevap buldum."',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 2,
        '"Konuyu daha derin anlatmak gerektiğine inanıyorum."',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 3,
        'Konu için yeterince açıklama yapılmamış, pek yardımcı olmadı',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 1,
        'Gayet öğretici bir paylaşım olmuş, tebrikler',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 2,
        'Lorem ipsum dolor sit amet,',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 3,
        '"Lorem ipsum dolor sit amet,',
        CURRENT_TIMESTAMP());