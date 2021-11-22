# TRAFİK SİMÜLASYON ÇALIŞTAYI EĞİTİMİ

# SUMO (Simulation of Urban MObility)

Sumo açık kaynak kodlu, taşınabilir yani Windows, Linux ve Macos işletim sistemlerinde çalışabilen mikro ölçekte ve çok modlu trafik simülasyon paketidir. 

![](assets/2021-10-29-13-05-40-image.png)

Proje Eclipse Kominitesine bağlı şekilde sürekli geliştirilmektedir.

Aşağıdaki linkten kurulum dosyasına ve açıklamaların olduğu siteye erişim sağlayabilirsiniz.

[Eclipse SUMO - Simulation of Urban MObility](https://www.eclipse.org/sumo/)

Projeye katkıda bulunanların listesi

[SUMO at a Glance - SUMO Documentation](https://sumo.dlr.de/docs/SUMO_at_a_Glance.html#contributors_and_participants) 

# Kurulum

## Ön Gereksinimlerin Kurulması

SUMO python üzerinde geliştirildiği için python kurulumunu yapmanız gerekmektedir.

Aşağıdaki linkten Python 2.7.18'i indirip kurunuz (yeni sürümü çıkarsa onu da indirip kurabilirsiniz)

[Python Release Python 2.7.18 | Python.org](https://www.python.org/downloads/release/python-2718/)

Bu kurulum windows üzerinde olacağı için windows kurulum dosyalarını 32-bit veya 64-bit işletim sisteminize göre seçiniz.

![](assets/2021-10-29-13-34-15-image.png)

https://www.python.org/ftp/python/2.7.18/python-2.7.18.amd64.msi

https://www.python.org/ftp/python/2.7.18/python-2.7.18.msi

Kurulum dosyasını kurduktan sonra sistem ayarlarında "path" değişkeninin güncellenmiş olması gerekir. Bu şekilde python dosyalarını çalıştırabiliriz. 

Başlat -> Çalıştır açarak  **cmd** yazınız

![](assets/2021-10-29-13-35-35-image.png)

Açılan konsol ekranına  aşağıdakini yazarak kurulumun başarılı olduğunu teyit ediniz.

```bash
python --version
```

Kurulum başarılı ise aşağıdaki gibi versiyon numarası görmeniz gerekmektedir. 

![](assets/2021-10-29-13-31-20-image.png)

```batch
Python 2.7.18
```

Eğer ki bunu göremiyorsanız python kurulumu yaptığımız klasoru sisteme tanıtmamız gerekmektedir.

Öncelikle kurulum yaptığımız python 2.7 klasorune gidiyoruz.

![](assets/2021-10-29-13-45-08-image.png)

Benim durumda aşağıdaki klasor yolu

```batch
C:\Python27
```

Sonrasında sistem değişkenlerine girip path değişkenini güncelliyorum. 

Başlat -> Bu Bilgisayar -> Özellikler 

![](assets/2021-10-29-13-46-26-image.png)

Sağda gelişmiş sistem ayarlarını seçiyorum "advance system settings"

<img src="assets/2021-10-29-13-47-02-image.png" title="" alt="" data-align="center">

Bundan sonra açılan pencereden "Sistem Değişkenleri" butonuna tıklıyoruz. "Environment Variables"

<img src="assets/2021-10-29-13-49-38-image.png" title="" alt="" data-align="center">

Gereken ayarlamaları bu ekranlardan yapacağız

![](assets/2021-10-29-13-50-36-image.png)

Burada iki kısım var. Yukarıdaki ayarlar bizim kullanıcımız ile ilgilidir. Aşağıdaki ayarlar ise sistemdeki bütün kullanıcıları ilgilendirir ve sistem ayarları kullanıcı ayarlarını ezerek çalışır. 

Kullanıcı değişkenlerindeki "path" değişkenini seçerek açıyoruz.

![](assets/2021-10-29-13-52-00-image.png)

Python klasorundeki uygulamaların konsoldan çalışması için aşağıda bir kayıt oluşturup  python klasorunu yazıyoruz ve onu en yukarı yandaki butonlar ile taşıyoruz. 

![](assets/2021-10-29-13-53-02-image.png)

Bunu sistem kullanıcıları için de yapıyoruz

![](assets/2021-10-29-13-53-50-image.png)

![](assets/2021-10-29-13-54-10-image.png)

Bütün pencerelere OK diyerek kayderek kapatıyoruz.  Yeni bir konsol ekranı açıp aşağıdaki gibi 

Başlat -> Çalıştır açarak **cmd** yazınız

Açılan konsol ekranına aşağıdakini yazarak kurulumun başarılı olduğunu teyit ediniz.

```bash
python --version
```

Kurulum başarılı ise aşağıdaki gibi versiyon numarası görmeniz gerekmektedir.

```batch
Python 2.7.18
```

Bunu gördükten sorna SUMO dosyasını indirip kurabiliriz. 

## SUMO Dosyasının Kurulması

İşletim sisteminize uygun sürümü sitedeki aşağıdaki buttondan seçerek indiriniz.

![](assets/2021-10-29-13-06-16-image.png)

Linke tıkladığınız aşağıdaki gibi kurulum dosyası bilgisayarınıza inecektir. 

(Chrome Browser için)

![](assets/2021-10-29-13-08-08-image.png)

Bu açık kaynak bir proje olduğu için doğrudan kaynak koduna erişiminiz mevcuttur. Ayrıca diğer işletim sistemi seçeneklerini de yine aynı seçim kutusundan seçebilirsiniz.

![](assets/2021-10-29-13-07-17-image.png)

Ayrıca ana menüdeki download kısmından da gerekli kurulum dosyasını indirebilirsiniz.

![](assets/2021-10-29-13-09-39-image.png)

[Downloads - SUMO Documentation](https://sumo.dlr.de/docs/Downloads.php)

![](assets/2021-10-29-13-09-22-image.png)

İndirdiğiniz kurulum dosyasını çalıştırarak kurulum yapabilirsiniz. (versiyonlar değişebilir)

![](assets/2021-10-29-13-17-12-image.png)

Eğer aşağıdaki gibi bir uyarı görürseniz. Dijital olarak imzalanmadığı için bu uyarıyı alıyordur. Problem değil. 

![](assets/2021-10-29-13-17-51-image.png)

more info'ya tıklayarak "Run Anyway" ve "Çalıştır" gibi olan butonu seçiniz.

![](assets/2021-10-29-13-18-46-image.png)

Açılan pencereden Next kısmına tıklayınız

![](assets/2021-10-29-13-19-42-image.png)

I Accept the terms the License Management kutusunu işaretleyerek Next butonuna basınız.

![](assets/2021-10-29-13-19-55-image.png)

Aşağıdaki gibi kurulum dosyalarının nereye kopyalanacağını göreceksiniz. Olduğu gibi bırakınız ve Next butonuna basınız. 

![](assets/2021-10-29-13-20-49-image.png)

PYTHONPATH

[What is PYTHONPATH environment variable in Python?](https://www.tutorialspoint.com/What-is-PYTHONPATH-environment-variable-in-Python)

Bu adımdan sonra kurulum başlayacak

![](assets/2021-10-29-13-21-45-image.png)

Çıkan uyarı ve onay kutularını onaylarak kurulumun başlamasını sağlayın

![](assets/2021-10-29-13-22-48-image.png)

Böylelikle kurulum tamamlanmış olacak

![](assets/2021-10-29-13-23-06-image.png)

# Kaynak Koda Erişim

Projenin koduna viewongithub butonu ile erişim sağlayabilirsiniz

![](assets/2021-10-29-13-11-14-image.png)

[GitHub - eclipse/sumo: Eclipse SUMO is an open source, highly portable, microscopic and continuous traffic simulation package designed to handle large networks. It allows for intermodal simulation including pedestrians and comes with a large set of tools for scenario creation.](https://github.com/eclipse/sumo)

![](assets/2021-10-29-13-11-37-image.png)

# Program Arayüzleri

## SUMO-GUI

Simulasyon SUMO-GUI ile çalışacaktır. 

![](assets/2021-10-29-13-57-24-image.png)

![](assets/2021-10-29-13-59-15-image.png)

## Netedit

Simulasyon alanını düzenlemek, yeni yollar yeni araçlar gibi unsurları eklemek veya silmek için kullanılacaktır.

![](assets/2021-10-29-13-58-15-image.png)

![](assets/2021-10-29-13-59-37-image.png)

Ayrıca bütün dosyalara kurulum klasorunden de erişebilirsiniz

```batch
C:\Program Files (x86)\Eclipse\Sumo\bin
```

![](assets/2021-10-29-14-48-29-image.png)

# DEMO

## Haritadan Yolların Oluşturulması

OSM Web Wizard uygulamasını açıyoruz. (aslında bir python script)

![](assets/2021-10-29-14-00-53-image.png)

python script çalışıp bize seçim yapabileceğimiz bir haritayı internet tarayıcısında açacaktır.

![](assets/2021-10-29-14-02-23-image.png)

![](assets/2021-10-29-14-02-34-image.png)

Sağ taraftaki arama kısmına "Rize" yazarak haritayı rizeye getiriyoruz. 

![](assets/2021-10-29-14-03-21-image.png)

Select area seçerek belli bir alanı seçebiliyoruz

![](assets/2021-10-29-14-04-02-image.png)

Options kısmında simulasyonun kaç sn süreceği ile ilgili girdiler mevcuttur.

![](assets/2021-10-29-14-04-31-image.png)

Simulasyonda olmasını istediğimiz araç, kamyon vb unsurları araç sembolune tıklayarak sağ menüden seçiyoruz. 

![](assets/2021-10-29-14-05-10-image.png)

Select Area işaretini kaldırarak daha geniş açıdan da şehri alabiliriz. Diğer türlü zoom çalışmayacaktır.

![](assets/2021-10-29-14-07-14-image.png)

Seçimleri yapıp "Generate Scenario" butonuna tıklıyoruz.

![](assets/2021-10-29-14-07-46-image.png)

hem internet tarayıcısında hem console ekranında süreçler ile ilgili işlemleri görebilirsiniz.

![](assets/2021-10-29-14-07-54-image.png)

![](assets/2021-10-29-14-08-34-image.png)

işlem bitince otomatik bir şekilde SUMO'yu açarak seçtiğiniz haritanın simulasyonunu çalışır halde size sunuyor.

![](assets/2021-10-29-14-09-49-image.png)

Haritayı bütüyerek yakınlaşarak mikro ölçekte detaylara bakabilirsiniz. 

![](assets/2021-10-29-14-10-09-image.png)

Menülerdeki play butonu ile simulasyonu başlattığınızda araçların hareket ettiğiniz göreceksiniz.

![](assets/2021-10-29-14-10-45-image.png)

Aşağıdaki gibi sağa sola dönen bekleyen sinyal veren frene bastığında ışığı yanan araçlar ve mavi renkte hareket eden yayalar göreceksiniz. 

![](assets/2021-10-29-14-11-02-image.png)

![](assets/2021-10-29-14-11-27-image.png)

Simulasyonu durdurmak için aşağıdaki butonu kullanın. 

![](assets/2021-10-29-14-11-39-image.png)

Simulasyonunu hızını aşağıdaki kontrolle ayarlayabilirsiniz.

![](assets/2021-10-29-14-11-48-image.png)

Simulasyondaki trafik yoğunluğunu ise aşağıdaki kontrolle değiştirebilirsiniz.

![](assets/2021-10-29-14-11-54-image.png)

Simulasyon üzerindeki her nesnenin bir adı ve numarası mevcut bunlara hızlı erişim için aşağıdaki kontrolü seçili halde bırakırsanız. üzerine fare ile geldiğinizse size hangi unsur olduğunu gösterecektir. 

![](assets/2021-10-29-14-12-28-image.png)

![](assets/2021-10-29-14-12-38-image.png)

![](assets/2021-10-29-14-12-45-image.png)

Simulasyonun kaçıncı saniyede olduğunu aşağıdaki kontrolden takip edebilirsiniz. Seçtiğimiz ayarlardan 3600 saniye olarak bu simulasyon ayarlandı. 3600 sn sonra kendiliğinden duracaktır. 

![](assets/2021-10-29-14-17-36-image.png)

Simulasyonu baştan başlatmak için aşağıdaki kontrolü kullaıyoruz. 

![](assets/2021-10-29-14-18-26-image.png)

Şimdi tekrar simulasyonu resetleyelim bir iki yolu kapatalım ve tekrar deneyelim.

Herhangi bir yola sağ tıkladığımızda 

Close Lane

Close Edge 

seçenekleri ile kapatma işlemi yapabiliriz

![](assets/2021-10-29-14-20-01-image.png)

Kapatılan yol kırmızı olacaktır.

![](assets/2021-10-29-14-20-16-image.png)

Ayrıca yollara hangi unsurların girebileceği ile ilgili de 

Sağ tıklayıp Select Reachable'dan gerekli unsurları seçiyoruz.

![](assets/2021-10-29-14-21-05-image.png)

Simulasyonda seçtiğimiz yol kapalı olduğu için farklı alternatifler deneniyor

![](assets/2021-10-29-14-22-17-image.png)

Herhangi bir araca sağ tıkladığımızda ,

aracın rotasını gösterebilir, takip edebilir. Yol tercihlerini görebiliriz.  Bunu yapmak için önce simulasyonu durdurmalı ve sonra seçmelisiniz. 

![](assets/2021-10-29-14-24-30-image.png)

Bu simulasyon dosyalarını kullanıcı klasorunde sumo  klasorune çıkarmaktadır.

```batch
C:\Users\ugur.coruh\Sumo
```

oluşturduğunuz her bir OSMWebWizard çıktısı buraya tarih saat ile düşmektedir.

![](assets/2021-10-29-14-30-22-image.png)

![](assets/2021-10-29-14-31-00-image.png)

### osm.sumocfg

Asıl ana configurasyonların hangilerinin kullanılacağını tutan dosyadır. run.bat ile çalıştırdığımızda gereken, yollar ve yolculuklar, araçlar bunun içindeki yazan yerlerden yüklenir.

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- generated on 2021-10-29 14:08:58 by Eclipse SUMO sumo Version 1.10.0
-->

<configuration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/sumoConfiguration.xsd">

    <input>
        <net-file value="osm.net.xml"/>
        <route-files value="osm.passenger.trips.xml,osm.bicycle.trips.xml,osm.motorcycle.trips.xml,osm.pedestrian.rou.xml"/>
        <additional-files value="osm.poly.xml"/>
    </input>

    <processing>
        <ignore-route-errors value="true"/>
    </processing>

    <routing>
        <device.rerouting.adaptation-steps value="18"/>
        <device.rerouting.adaptation-interval value="10"/>
    </routing>

    <report>
        <verbose value="true"/>
        <duration-log.statistics value="true"/>
        <no-step-log value="true"/>
    </report>

    <gui_only>
        <gui-settings-file value="osm.view.xml"/>
    </gui_only>

</configuration>
```

Dosya içindeki aşağıdaki tanımlara bakarsak

```xml
    <input>
        <net-file value="osm.net.xml"/>
        <route-files value="osm.passenger.trips.xml,osm.bicycle.trips.xml,osm.motorcycle.trips.xml,osm.pedestrian.rou.xml"/>
        <additional-files value="osm.poly.xml"/>
    </input>
```

Yolların tanımları şurada yer almaktadır.

```xml
<net-file value="osm.net.xml"/>
```

- osm.net.xml

Yolculukların tanımları

```xml
<route-files value="osm.passenger.trips.xml,osm.bicycle.trips.xml,osm.motorcycle.trips.xml,osm.pedestrian.rou.xml"/>
```

- osm.passenger.trips.xml

- osm.bicycle.trips.xml

- osm.motorcycle.trips.xml

- osm.pedestrian.rou.xml

Ekranda gördüğümüz yeşil alanlar binalar gibi unsurlar poligon olarak tutulmaktadır. Bunlarda aşağıdaki dosyada saklanmaktadır.

```xml
 <additional-files value="osm.poly.xml"/>
```

- osm.poly.xml

Burada dikkat ederseniz araçların şekilleri standart opsiyonlara aşağıdaki linklerden erişebilirsiniz.

[Vehicle Type Parameter Defaults - SUMO Documentation](https://sumo.dlr.de/docs/Vehicle_Type_Parameter_Defaults.html)

[Definition of Vehicles, Vehicle Types, and Routes - SUMO Documentation](https://sumo.dlr.de/docs/Definition_of_Vehicles,_Vehicle_Types,_and_Routes.html#vehicle_types)

Normalde aşağıdaki dosyalar bizim çalışmamız için yeterlidir. 

- osm.sumocfg

- osm.net.xml

- osm.passenger.trips.xml

- osm.bicycle.trips.xml

- osm.motorcycle.trips.xml

- osm.pedestrian.rou.xml

- osm.poly.xml

osm.net.xml dosyasında yapılan değişikliklerin trips.xml dosyalarına yansıtılması için built.bat dosyasını kullanıyoruz. Yol tanımlarına göre yolcukllar tekrar rast gelebir şekilde oluşturuluyor.

build.bat

```batch
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --fringe-factor 1 -p 0.331220 -o osm.pedestrian.trips.xml -e 3600 -r osm.pedestrian.rou.xml --vehicle-class pedestrian --pedestrians --prefix ped --max-distance 2000
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --fringe-factor 2 -p 0.554801 -o osm.bicycle.trips.xml -e 3600 --vehicle-class bicycle --vclass bicycle --prefix bike --fringe-start-attributes "departSpeed=\"max\"" --max-distance 8000 --trip-attributes "departLane=\"best\"" --validate
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --fringe-factor 2 -p 0.786494 -o osm.motorcycle.trips.xml -e 3600 --vehicle-class motorcycle --vclass motorcycle --prefix moto --fringe-start-attributes "departSpeed=\"max\"" --max-distance 1200 --trip-attributes "departLane=\"best\"" --validate
python "%SUMO_HOME%\tools\randomTrips.py" -n osm.net.xml --fringe-factor 5 -p 0.262373 -o osm.passenger.trips.xml -e 3600 --vehicle-class passenger --vclass passenger --prefix veh --min-distance 300 --trip-attributes "departLane=\"best\"" --fringe-start-attributes "departSpeed=\"max\"" --allow-fringe.min-length 1000 --lanes --validate
```

sonrasında tekrardan çalıştırmak için run.bat dosyasını seçmemiz yeterlidir.

run.bat

```batch
sumo-gui -c osm.sumocfg
```

Yukarıdaki dosyalar dışında kalan

**osm.netccfg**

dosyasına baktığımızda openstreetmap'den aldığımız bilgileri **osm_bbox.osm.xml**

sumo için osm.net.xml'e dönüştürdüğünü görürürüz. 

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- generated on 2021-10-29 14:07:52 by Eclipse SUMO netconvert Version 1.10.0
-->

<configuration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/netconvertConfiguration.xsd">

    <input>
        <type-files value="C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvert.typ.xml,C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvertUrbanDe.typ.xml,C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvertPedestrians.typ.xml,C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvertBicycle.typ.xml"/>
        <osm-files value="osm_bbox.osm.xml"/>
    </input>

    <output>
        <output-file value="osm.net.xml"/>
        <output.street-names value="true"/>
        <output.original-names value="true"/>
    </output>

    <processing>
        <geometry.remove value="true"/>
        <roundabouts.guess value="true"/>
    </processing>

    <tls_building>
        <tls.discard-simple value="true"/>
        <tls.join value="true"/>
        <tls.guess-signals value="true"/>
        <tls.default-type value="actuated"/>
    </tls_building>

    <ramp_guessing>
        <ramps.guess value="true"/>
    </ramp_guessing>

    <junctions>
        <junctions.join value="true"/>
        <junctions.corner-detail value="5"/>
    </junctions>

    <pedestrian>
        <crossings.guess value="true"/>
    </pedestrian>

    <report>
        <verbose value="true"/>
    </report>

</configuration>
```

```xml
    <input>
        <type-files value="C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvert.typ.xml,C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvertUrbanDe.typ.xml,C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvertPedestrians.typ.xml,C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmNetconvertBicycle.typ.xml"/>
        <osm-files value="osm_bbox.osm.xml"/>
    </input>

    <output>
        <output-file value="osm.net.xml"/>
        <output.street-names value="true"/>
        <output.original-names value="true"/>
    </output>
```

**osm.polycfg** ise sonrasında hem osm.net.xml hem de osm_bbox.osm.xml dosyasını girdi olarak alarak ekranda gördüğümüz yeşillikler binalar için poligon dosyasını oluşturur (**osm.poly.xml**)

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- generated on 2021-10-29 14:07:58 by Eclipse SUMO polyconvert Version 1.10.0
-->

<configuration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/polyconvertConfiguration.xsd">

    <input>
        <net-file value="osm.net.xml"/>
        <osm-files value="osm_bbox.osm.xml"/>
        <osm.keep-full-type value="true"/>
        <type-file value="C:\Program%20Files%20(x86)\Eclipse\Sumo\data\typemap\osmPolyconvert.typ.xml"/>
    </input>

    <output>
        <output-file value="osm.poly.xml"/>
    </output>

    <report>
        <verbose value="true"/>
    </report>

</configuration>
```

> Burada unutulmaması gereken unsur. Yolların bağlantıları netedit ile değiştirildiğinde yolculukların tekrar build.bat ile oluşturulmasıdır.

![](assets/2021-10-29-15-17-57-image.png)

![](assets/2021-10-29-15-18-33-image.png)

![](assets/2021-10-29-15-18-23-image.png)

![](assets/2021-10-29-15-19-34-image.png)

![](assets/2021-10-29-15-19-48-image.png)

Bu şekilde açtıktan sonra netedit ile düzenlemek için Open in netedit seçilir.

![](assets/2021-10-29-15-20-20-image.png)

Aşağıdaki gibi netedit yol oluşturma modunda açılır.

![](assets/2021-10-29-15-20-51-image.png)

Burada dikkat edilmesi gereken durum hangi modda olduğunuzdur.

Menülerde modlar mevcuttur.

![](assets/2021-10-29-15-22-48-image.png)

Benzer şekilde ana menü üzerinde de aynı işleve sahip butonlar vardır

![](assets/2021-10-29-15-23-14-image.png)

## Silme İşlemi (Select Mode)

Bir şeyleri seçip silmek için Select Mode seçilir ve Mouse ile seçilip Delete'e basılır. 

![](assets/2021-10-29-15-24-31-image.png)

F5 ile veya Processing -> Compute Junctions ile bağlantılar tekrar otomatik hesaplanır.

![](assets/2021-10-29-16-02-01-image.png)

![](assets/2021-10-29-15-25-45-image.png)

## Silme İşlemi (Delete Mode)

Delete Mode direk silmek için kullanılır. Tıkladığınız herşey silinir.

## Sürükleme İşlemi (Move Mode)

Yolları sağa sola çekmek için kullanılrı. 

![](assets/2021-10-29-15-28-36-image.png)

![](assets/2021-10-29-15-28-50-image.png)

F5 ile veya Processing -> Compute Junctions ile bağlantılar tekrar otomatik hesaplanır.

![](assets/2021-10-29-15-29-13-image.png)

Bu hali kaydedip tekrar build.bat ile yolculukları oluşturalım. Herşeyi kapatın.

Build.bat'ı çalıştırın

![](assets/2021-10-29-15-33-15-image.png)

![](assets/2021-10-29-15-32-54-image.png)

işlem başarılı bir şekilde bittikten sonra run.bat'ı çalıştırın

![](assets/2021-10-29-15-34-14-image.png)

Modifiye edilmiş ve silinmiş yolumuz değişikliklere yansıdı

![](assets/2021-10-29-15-35-00-image.png)

şimdi simulasyonu çalıştıralım, gördüğünüz üzere araçlar yolları uygun bir şekilde kullanıyorlar. 

![](assets/2021-10-29-15-36-11-image.png)

Şimdi yollara ekleme yapalım ve şerit sayıları ile oynayalım. 

![](assets/2021-10-29-15-38-02-image.png)

Aşağıdaki buton ile simulasyonu resetleyelim

![](assets/2021-10-29-15-38-17-image.png)

netedit'de yollarımızı açalım

![](assets/2021-10-29-15-39-30-image.png)

şuraya alternatif bir yol koyalım

![](assets/2021-10-29-15-39-59-image.png)

Edge Mode seçilir

![](assets/2021-10-29-15-40-22-image.png)

Çizmeden önce çizilecek yolun bilgileri sağ taraftaki menüden girilir

![](assets/2021-10-29-16-03-09-image.png)

Maximum Hız

![](assets/2021-10-29-16-03-32-image.png)

Şerit Sayısı

tek şerit

![](assets/2021-10-29-16-03-44-image.png)

üç şerit 

![](assets/2021-10-29-16-05-31-image.png)

Yolu Kullanabileceklerin yani İzin verilenler listesi

![](assets/2021-10-29-16-04-02-image.png)

![](assets/2021-10-29-16-04-14-image.png)

Yolu Kullanamayacakların yani Yasaklı Listesi

![](assets/2021-10-29-16-05-09-image.png)

![](assets/2021-10-29-16-05-19-image.png)

Genişleme yönü şerit eklendiğinde sağa mı solamı yoksa ortaya doğrumu diye

![](assets/2021-10-29-16-06-20-image.png)

Burada her şerit için ayrı ayrı izin olayları ayarlanabilir

![](assets/2021-10-29-16-06-59-image.png)

3 şeritli bir yolda ilk şeriti yaya yolu birinci şeriti kamyonlar için zorunlu yapalım.

0 nolu şeridi seçelim

![](assets/2021-10-29-16-07-54-image.png)

allow butonuna basıp yayayı seçelim

![](assets/2021-10-29-16-07-44-image.png)

![](assets/2021-10-29-16-08-37-image.png)

Yolun genişliği ve hız bilgileri de ayrıca girilebilir

![](assets/2021-10-29-16-09-07-image.png)

![](assets/2021-10-29-16-09-17-image.png)

araç yolunda yayaları bisikletleri yasaklayalım

![](assets/2021-10-29-16-10-05-image.png)

Normalde gemi, tren gibi opsiyonları da yasaklamak gerek ama bizde o araçlar mevcut değil. 

![](assets/2021-10-29-16-11-14-image.png)

Sollama şeridini ise büyük araçlara yasaklayalım

![](assets/2021-10-29-16-12-19-image.png)

![](assets/2021-10-29-16-12-53-image.png)

Bu ayarlar ile  yol çizilecek yerlere tıklanarak yol oluşturulur.

![](assets/2021-10-29-16-13-38-image.png)

F5'e basıp yolumuzun bağlantılarını güncelliyoruz.

![](assets/2021-10-29-16-14-09-image.png)

Inspect mode alıp save edelim.

![](assets/2021-10-29-16-14-38-image.png)

Ayarları değiştirmediğiniz müddetçe bir sonraki yollarda aynı şekilde çizilir.

![](assets/2021-10-29-16-15-21-image.png)

Network Mode seçilerek bu yolun nerelere doğru akacağı seçilir. 

![](assets/2021-10-29-16-24-18-image.png)

Connection Mode açılınca sol tarafta menüde  kaynak yol mavi nereye gideceği yeşil olarak gösterilir. Seçim yapılabilecekler ise koyu yeşil ile gösterilir. 

![](assets/2021-10-29-16-24-46-image.png)

![](assets/2021-10-29-16-25-34-image.png)

![](assets/2021-10-29-16-25-57-image.png)

Sarı çakışan yollar. 

![](assets/2021-10-29-16-26-17-image.png)

![](assets/2021-10-29-16-28-06-image.png)

![](assets/2021-10-29-16-27-51-image.png)

![](assets/2021-10-29-16-28-46-image.png)

![](assets/2021-10-29-16-29-03-image.png)

Inspect mode ile baktığımızda kaydedip kapatalım.

<img src="assets/2021-10-29-16-29-37-image.png" title="" alt="" data-align="inline">

build.bat ile tekrar oluşturup run.bat ile çalıştıralım

![](assets/2021-10-29-16-37-11-image.png)

![](assets/2021-10-29-16-37-59-image.png)

![](assets/2021-10-29-16-38-21-image.png)

Böylelikle ekleme ve çıkartma işlemleri başarılı bir şekilde tamamlanmış oldu.

# Araç Yoğunluk Takip Dedektörü Konulması

[Lanearea Detectors (E2) - SUMO Documentation](https://sumo.dlr.de/docs/Simulation/Output/Lanearea_Detectors_%28E2%29.html)

Kapattıktan sonra tekrar run.bat ile açıp modlardan Additional Mode seçilerek 

otobüs durağı, park alanı, araç sayıcısı gibi unsurlar eklenir.

![](assets/2021-10-29-16-42-32-image.png)

![](assets/2021-10-29-16-43-07-image.png)

![](assets/2021-10-29-16-43-18-image.png)

![](assets/2021-10-29-16-43-25-image.png)

Yeni eklenen e2 detectorleri bir dosyaya kaydetmemiz sonra ana projeye eklememiz gerekmektedir.

![](assets/2021-10-29-16-44-09-image.png)

![](assets/2021-10-29-16-47-39-image.png)

osm.sumocfg dosyasını açıp bu yeni dosyayı aşağıdaki additional-files kısmına ekliyoruz.

![](assets/2021-10-29-16-48-35-image.png)

```xml
    <input>
        <net-file value="osm.net.xml"/>
        <route-files value="osm.passenger.trips.xml,osm.bicycle.trips.xml,osm.motorcycle.trips.xml,osm.pedestrian.rou.xml"/>
        <additional-files value="osm.poly.xml"/>
    </input>
```

![](assets/2021-10-29-16-49-01-image.png)

```xml
    <input>
        <net-file value="osm.net.xml"/>
        <route-files value="osm.passenger.trips.xml,osm.bicycle.trips.xml,osm.motorcycle.trips.xml,osm.pedestrian.rou.xml"/>
        <additional-files value="osm.poly.xml,osm.e2.xml"/>
    </input>
```

Açtığımız zaman SUMO ile bu detectorler görünüyor.

![](assets/2021-10-29-16-50-33-image.png)

E2 dedektörü ekledik fakat çıktı dosyasına ihtiyacımız var. Bunun için farklı bir yol deneyip el ile parameterleri değiştireceğiz. Aşağıdaki bilgileri kullanarak dökümandaki anchor olan ayarları ekleyeceğiz.

[Lanearea Detectors (E2) - SUMO Documentation](https://sumo.dlr.de/docs/Simulation/Output/Lanearea_Detectors_%28E2%29.html#generated_output)

```xml
<additional xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/additional_file.xsd">
    <e2Detector id="e2Detector_gneE1_1_1" lane="gneE1_1" pos="33.52" length="10.00" freq="300.00" file="e2Detector_gneE1_1_1.xml"/>
    <e2Detector id="e2Detector_gneE1_2_0" lane="gneE1_2" pos="30.11" length="10.00" freq="300.00" file="e2Detector_gneE1_2_0.xml"/>
</additional>
```

ve şu şekilde güncelliyoruz

```xml
<additional xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/additional_file.xsd">
          <laneAreaDetector id="e2Detector_gneE1_1_1" lane="gneE1_1" pos="33.52" length="10.00" freq="300.00" file="e2Detector_gneE1_1_1.xml"/>  
          <laneAreaDetector id="e2Detector_gneE1_2_0" lane="gneE1_2" pos="30.11" length="10.00" freq="300.00" file="e2Detector_gneE1_2_0.xml"/>
</additional>
```

Bu şekli ile output dosyalarımız oluşmaktadır.

![](assets/2021-10-29-17-20-30-image.png)

e2Detector_gneE1_1_1.xml

```xml
<detector xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/det_e2_file.xsd">
   <interval begin="0.00" end="300.00" id="e2Detector_gneE1_1_1" sampledSeconds="16.81" nVehEntered="15" nVehLeft="15" nVehSeen="15" meanSpeed="12.05" meanTimeLoss="0.11" meanOccupancy="1.30" maxOccupancy="50.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.11" maxVehicleNumber="1" />
   <interval begin="300.00" end="600.00" id="e2Detector_gneE1_1_1" sampledSeconds="95.47" nVehEntered="32" nVehLeft="30" nVehSeen="32" meanSpeed="4.45" meanTimeLoss="2.03" meanOccupancy="9.81" maxOccupancy="65.30" meanMaxJamLengthInVehicles="0.19" meanMaxJamLengthInMeters="0.84" maxJamLengthInVehicles="2" maxJamLengthInMeters="9.14" jamLengthInVehiclesSum="56" jamLengthInMetersSum="252.62" meanHaltingDuration="29.00" maxHaltingDuration="30.00" haltingDurationSum="58.00" meanIntervalHaltingDuration="29.00" maxIntervalHaltingDuration="30.00" intervalHaltingDurationSum="58.00" startedHalts="2.00" meanVehicleNumber="0.42" maxVehicleNumber="2" />
   <interval begin="600.00" end="900.00" id="e2Detector_gneE1_1_1" sampledSeconds="602.39" nVehEntered="1" nVehLeft="1" nVehSeen="3" meanSpeed="0.02" meanTimeLoss="200.53" meanOccupancy="60.23" maxOccupancy="65.28" meanMaxJamLengthInVehicles="2.01" meanMaxJamLengthInMeters="8.57" maxJamLengthInVehicles="3" maxJamLengthInMeters="10.00" jamLengthInVehiclesSum="602" jamLengthInMetersSum="2569.86" meanHaltingDuration="222.50" maxHaltingDuration="328.00" haltingDurationSum="445.00" meanIntervalHaltingDuration="208.50" maxIntervalHaltingDuration="300.00" intervalHaltingDurationSum="417.00" startedHalts="1.00" meanVehicleNumber="2.01" maxVehicleNumber="3" />
   <interval begin="900.00" end="1200.00" id="e2Detector_gneE1_1_1" sampledSeconds="600.00" nVehEntered="0" nVehLeft="0" nVehSeen="2" meanSpeed="0.01" meanTimeLoss="299.87" meanOccupancy="60.75" maxOccupancy="72.00" meanMaxJamLengthInVehicles="2.00" meanMaxJamLengthInMeters="8.58" maxJamLengthInVehicles="2" maxJamLengthInMeters="9.76" jamLengthInVehiclesSum="600" jamLengthInMetersSum="2575.40" meanHaltingDuration="522.50" maxHaltingDuration="628.00" haltingDurationSum="1045.00" meanIntervalHaltingDuration="300.00" maxIntervalHaltingDuration="300.00" intervalHaltingDurationSum="600.00" startedHalts="0.00" meanVehicleNumber="2.00" maxVehicleNumber="2" />
   <interval begin="1200.00" end="1500.00" id="e2Detector_gneE1_1_1" sampledSeconds="600.00" nVehEntered="0" nVehLeft="0" nVehSeen="2" meanSpeed="0.00" meanTimeLoss="299.90" meanOccupancy="67.22" maxOccupancy="72.00" meanMaxJamLengthInVehicles="2.00" meanMaxJamLengthInMeters="9.23" maxJamLengthInVehicles="2" maxJamLengthInMeters="9.85" jamLengthInVehiclesSum="600" jamLengthInMetersSum="2768.84" meanHaltingDuration="822.50" maxHaltingDuration="928.00" haltingDurationSum="1645.00" meanIntervalHaltingDuration="300.00" maxIntervalHaltingDuration="300.00" intervalHaltingDurationSum="600.00" startedHalts="0.00" meanVehicleNumber="2.00" maxVehicleNumber="2" />
   <interval begin="1500.00" end="1800.00" id="e2Detector_gneE1_1_1" sampledSeconds="597.15" nVehEntered="1" nVehLeft="1" nVehSeen="3" meanSpeed="0.01" meanTimeLoss="198.97" meanOccupancy="58.85" maxOccupancy="59.73" meanMaxJamLengthInVehicles="1.99" meanMaxJamLengthInMeters="8.37" maxJamLengthInVehicles="2" maxJamLengthInMeters="8.47" jamLengthInVehiclesSum="597" jamLengthInMetersSum="2509.62" meanHaltingDuration="564.50" maxHaltingDuration="1017.00" haltingDurationSum="1129.00" meanIntervalHaltingDuration="206.00" maxIntervalHaltingDuration="300.00" intervalHaltingDurationSum="412.00" startedHalts="1.00" meanVehicleNumber="1.99" maxVehicleNumber="2" />
   <interval begin="1800.00" end="2100.00" id="e2Detector_gneE1_1_1" sampledSeconds="810.66" nVehEntered="1" nVehLeft="0" nVehSeen="3" meanSpeed="0.01" meanTimeLoss="269.99" meanOccupancy="52.13" maxOccupancy="58.34" meanMaxJamLengthInVehicles="2.68" meanMaxJamLengthInMeters="9.36" maxJamLengthInVehicles="3" maxJamLengthInMeters="10.00" jamLengthInVehiclesSum="803" jamLengthInMetersSum="2806.90" meanHaltingDuration="387.00" maxHaltingDuration="1101.00" haltingDurationSum="1935.00" meanIntervalHaltingDuration="161.20" maxIntervalHaltingDuration="213.00" intervalHaltingDurationSum="806.00" startedHalts="3.00" meanVehicleNumber="2.70" maxVehicleNumber="3" />
   <interval begin="2100.00" end="2400.00" id="e2Detector_gneE1_1_1" sampledSeconds="537.38" nVehEntered="0" nVehLeft="2" nVehSeen="3" meanSpeed="0.03" meanTimeLoss="178.74" meanOccupancy="38.83" maxOccupancy="50.00" meanMaxJamLengthInVehicles="1.76" meanMaxJamLengthInMeters="5.73" maxJamLengthInVehicles="3" maxJamLengthInMeters="10.00" jamLengthInVehiclesSum="528" jamLengthInMetersSum="1719.16" meanHaltingDuration="233.20" maxHaltingDuration="406.00" haltingDurationSum="1166.00" meanIntervalHaltingDuration="106.00" maxIntervalHaltingDuration="195.00" intervalHaltingDurationSum="530.00" startedHalts="2.00" meanVehicleNumber="1.79" maxVehicleNumber="3" />
   <interval begin="2400.00" end="2700.00" id="e2Detector_gneE1_1_1" sampledSeconds="300.00" nVehEntered="0" nVehLeft="0" nVehSeen="1" meanSpeed="0.02" meanTimeLoss="299.69" meanOccupancy="23.69" maxOccupancy="50.00" meanMaxJamLengthInVehicles="0.99" meanMaxJamLengthInMeters="2.34" maxJamLengthInVehicles="1" maxJamLengthInMeters="5.00" jamLengthInVehiclesSum="298" jamLengthInMetersSum="703.36" meanHaltingDuration="198.50" maxHaltingDuration="205.00" haltingDurationSum="397.00" meanIntervalHaltingDuration="149.50" maxIntervalHaltingDuration="192.00" intervalHaltingDurationSum="299.00" startedHalts="1.00" meanVehicleNumber="1.00" maxVehicleNumber="1" />
   <interval begin="2700.00" end="3000.00" id="e2Detector_gneE1_1_1" sampledSeconds="480.77" nVehEntered="2" nVehLeft="1" nVehSeen="3" meanSpeed="0.01" meanTimeLoss="160.18" meanOccupancy="43.63" maxOccupancy="66.59" meanMaxJamLengthInVehicles="1.60" meanMaxJamLengthInMeters="5.85" maxJamLengthInVehicles="2" maxJamLengthInMeters="9.16" jamLengthInVehiclesSum="479" jamLengthInMetersSum="1756.41" meanHaltingDuration="224.33" maxHaltingDuration="309.00" haltingDurationSum="673.00" meanIntervalHaltingDuration="160.33" maxIntervalHaltingDuration="182.00" intervalHaltingDurationSum="481.00" startedHalts="2.00" meanVehicleNumber="1.61" maxVehicleNumber="2" />
   <interval begin="3000.00" end="3300.00" id="e2Detector_gneE1_1_1" sampledSeconds="425.82" nVehEntered="0" nVehLeft="1" nVehSeen="2" meanSpeed="0.02" meanTimeLoss="212.54" meanOccupancy="56.60" maxOccupancy="66.59" meanMaxJamLengthInVehicles="1.40" meanMaxJamLengthInMeters="6.63" maxJamLengthInVehicles="2" maxJamLengthInMeters="9.16" jamLengthInVehiclesSum="420" jamLengthInMetersSum="1987.79" meanHaltingDuration="196.50" maxHaltingDuration="307.00" haltingDurationSum="786.00" meanIntervalHaltingDuration="105.50" maxIntervalHaltingDuration="169.00" intervalHaltingDurationSum="422.00" startedHalts="2.00" meanVehicleNumber="1.42" maxVehicleNumber="2" />
   <interval begin="3300.00" end="3600.00" id="e2Detector_gneE1_1_1" sampledSeconds="464.63" nVehEntered="2" nVehLeft="1" nVehSeen="3" meanSpeed="0.03" meanTimeLoss="154.59" meanOccupancy="62.98" maxOccupancy="74.51" meanMaxJamLengthInVehicles="1.53" meanMaxJamLengthInMeters="7.61" maxJamLengthInVehicles="2" maxJamLengthInMeters="10.00" jamLengthInVehiclesSum="460" jamLengthInMetersSum="2282.49" meanHaltingDuration="157.25" maxHaltingDuration="307.00" haltingDurationSum="629.00" meanIntervalHaltingDuration="115.00" maxIntervalHaltingDuration="161.00" intervalHaltingDurationSum="460.00" startedHalts="4.00" meanVehicleNumber="1.55" maxVehicleNumber="2" />
   <interval begin="3600.00" end="3900.00" id="e2Detector_gneE1_1_1" sampledSeconds="600.00" nVehEntered="0" nVehLeft="0" nVehSeen="2" meanSpeed="0.00" meanTimeLoss="299.95" meanOccupancy="70.06" maxOccupancy="74.27" meanMaxJamLengthInVehicles="2.00" meanMaxJamLengthInMeters="9.51" maxJamLengthInVehicles="2" maxJamLengthInMeters="9.93" jamLengthInVehiclesSum="600" jamLengthInMetersSum="2852.96" meanHaltingDuration="460.50" maxHaltingDuration="461.00" haltingDurationSum="921.00" meanIntervalHaltingDuration="300.00" maxIntervalHaltingDuration="300.00" intervalHaltingDurationSum="600.00" startedHalts="0.00" meanVehicleNumber="2.00" maxVehicleNumber="2" />
   <interval begin="3900.00" end="4023.00" id="e2Detector_gneE1_1_1" sampledSeconds="246.00" nVehEntered="0" nVehLeft="0" nVehSeen="2" meanSpeed="0.00" meanTimeLoss="123.00" meanOccupancy="66.38" maxOccupancy="66.38" meanMaxJamLengthInVehicles="2.00" meanMaxJamLengthInMeters="9.14" maxJamLengthInVehicles="2" maxJamLengthInMeters="9.14" jamLengthInVehiclesSum="246" jamLengthInMetersSum="1124.14" meanHaltingDuration="583.50" maxHaltingDuration="584.00" haltingDurationSum="1167.00" meanIntervalHaltingDuration="123.00" maxIntervalHaltingDuration="123.00" intervalHaltingDurationSum="246.00" startedHalts="0.00" meanVehicleNumber="2.00" maxVehicleNumber="2" />
</detector>
```

e2Detector_gneE1_2_0.xml

```xml
<detector xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/det_e2_file.xsd">
   <interval begin="0.00" end="300.00" id="e2Detector_gneE1_2_0" sampledSeconds="0.00" nVehEntered="0" nVehLeft="0" nVehSeen="0" meanSpeed="-1.00" meanTimeLoss="-1.00" meanOccupancy="0.00" maxOccupancy="0.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.00" maxVehicleNumber="0" />
   <interval begin="300.00" end="600.00" id="e2Detector_gneE1_2_0" sampledSeconds="0.00" nVehEntered="0" nVehLeft="0" nVehSeen="0" meanSpeed="-1.00" meanTimeLoss="-1.00" meanOccupancy="0.00" maxOccupancy="0.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.00" maxVehicleNumber="0" />
   <interval begin="600.00" end="900.00" id="e2Detector_gneE1_2_0" sampledSeconds="0.00" nVehEntered="0" nVehLeft="0" nVehSeen="0" meanSpeed="-1.00" meanTimeLoss="-1.00" meanOccupancy="0.00" maxOccupancy="0.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.00" maxVehicleNumber="0" />
   <interval begin="900.00" end="1200.00" id="e2Detector_gneE1_2_0" sampledSeconds="3.37" nVehEntered="3" nVehLeft="3" nVehSeen="3" meanSpeed="13.36" meanTimeLoss="0.07" meanOccupancy="0.38" maxOccupancy="50.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.02" maxVehicleNumber="1" />
   <interval begin="1200.00" end="1500.00" id="e2Detector_gneE1_2_0" sampledSeconds="6.97" nVehEntered="6" nVehLeft="6" nVehSeen="6" meanSpeed="12.51" meanTimeLoss="0.08" meanOccupancy="0.83" maxOccupancy="50.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.04" maxVehicleNumber="1" />
   <interval begin="1500.00" end="1800.00" id="e2Detector_gneE1_2_0" sampledSeconds="4.76" nVehEntered="4" nVehLeft="4" nVehSeen="4" meanSpeed="12.61" meanTimeLoss="0.08" meanOccupancy="0.58" maxOccupancy="50.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.03" maxVehicleNumber="1" />
   <interval begin="1800.00" end="2100.00" id="e2Detector_gneE1_2_0" sampledSeconds="454.97" nVehEntered="4" nVehLeft="2" nVehSeen="4" meanSpeed="0.09" meanTimeLoss="113.05" meanOccupancy="49.20" maxOccupancy="63.43" meanMaxJamLengthInVehicles="1.49" meanMaxJamLengthInMeters="6.64" maxJamLengthInVehicles="2" maxJamLengthInMeters="8.86" jamLengthInVehiclesSum="448" jamLengthInMetersSum="1993.08" meanHaltingDuration="225.00" maxHaltingDuration="233.00" haltingDurationSum="450.00" meanIntervalHaltingDuration="225.00" maxIntervalHaltingDuration="233.00" intervalHaltingDurationSum="450.00" startedHalts="2.00" meanVehicleNumber="1.53" maxVehicleNumber="2" />
   <interval begin="2100.00" end="2400.00" id="e2Detector_gneE1_2_0" sampledSeconds="498.23" nVehEntered="0" nVehLeft="1" nVehSeen="2" meanSpeed="0.03" meanTimeLoss="248.52" meanOccupancy="49.35" maxOccupancy="63.43" meanMaxJamLengthInVehicles="1.64" meanMaxJamLengthInMeters="7.51" maxJamLengthInVehicles="2" maxJamLengthInMeters="10.00" jamLengthInVehiclesSum="491" jamLengthInMetersSum="2254.32" meanHaltingDuration="235.75" maxHaltingDuration="414.00" haltingDurationSum="943.00" meanIntervalHaltingDuration="123.25" maxIntervalHaltingDuration="197.00" intervalHaltingDurationSum="493.00" startedHalts="2.00" meanVehicleNumber="1.66" maxVehicleNumber="2" />
   <interval begin="2400.00" end="2700.00" id="e2Detector_gneE1_2_0" sampledSeconds="300.00" nVehEntered="0" nVehLeft="0" nVehSeen="1" meanSpeed="0.00" meanTimeLoss="300.00" meanOccupancy="35.20" maxOccupancy="35.20" meanMaxJamLengthInVehicles="1.00" meanMaxJamLengthInMeters="3.52" maxJamLengthInVehicles="1" maxJamLengthInMeters="3.52" jamLengthInVehiclesSum="300" jamLengthInMetersSum="1056.06" meanHaltingDuration="400.00" maxHaltingDuration="400.00" haltingDurationSum="400.00" meanIntervalHaltingDuration="300.00" maxIntervalHaltingDuration="300.00" intervalHaltingDurationSum="300.00" startedHalts="0.00" meanVehicleNumber="1.00" maxVehicleNumber="1" />
   <interval begin="2700.00" end="3000.00" id="e2Detector_gneE1_2_0" sampledSeconds="118.00" nVehEntered="0" nVehLeft="1" nVehSeen="1" meanSpeed="0.00" meanTimeLoss="118.00" meanOccupancy="13.85" maxOccupancy="35.20" meanMaxJamLengthInVehicles="0.39" meanMaxJamLengthInMeters="1.38" maxJamLengthInVehicles="1" maxJamLengthInMeters="3.52" jamLengthInVehiclesSum="118" jamLengthInMetersSum="415.38" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.39" maxVehicleNumber="1" />
   <interval begin="3000.00" end="3300.00" id="e2Detector_gneE1_2_0" sampledSeconds="0.00" nVehEntered="0" nVehLeft="0" nVehSeen="0" meanSpeed="-1.00" meanTimeLoss="-1.00" meanOccupancy="0.00" maxOccupancy="0.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.00" maxVehicleNumber="0" />
   <interval begin="3300.00" end="3600.00" id="e2Detector_gneE1_2_0" sampledSeconds="0.00" nVehEntered="0" nVehLeft="0" nVehSeen="0" meanSpeed="-1.00" meanTimeLoss="-1.00" meanOccupancy="0.00" maxOccupancy="0.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.00" maxVehicleNumber="0" />
   <interval begin="3600.00" end="3900.00" id="e2Detector_gneE1_2_0" sampledSeconds="0.00" nVehEntered="0" nVehLeft="0" nVehSeen="0" meanSpeed="-1.00" meanTimeLoss="-1.00" meanOccupancy="0.00" maxOccupancy="0.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.00" maxVehicleNumber="0" />
   <interval begin="3900.00" end="4023.00" id="e2Detector_gneE1_2_0" sampledSeconds="0.00" nVehEntered="0" nVehLeft="0" nVehSeen="0" meanSpeed="-1.00" meanTimeLoss="-1.00" meanOccupancy="0.00" maxOccupancy="0.00" meanMaxJamLengthInVehicles="0.00" meanMaxJamLengthInMeters="0.00" maxJamLengthInVehicles="0" maxJamLengthInMeters="0.00" jamLengthInVehiclesSum="0" jamLengthInMetersSum="0.00" meanHaltingDuration="0.00" maxHaltingDuration="0.00" haltingDurationSum="0.00" meanIntervalHaltingDuration="0.00" maxIntervalHaltingDuration="0.00" intervalHaltingDurationSum="0.00" startedHalts="0.00" meanVehicleNumber="0.00" maxVehicleNumber="0" />
</detector>
```

The values are described in the following table.

| Name                        | Type                 | Description                                                                                                                                                                                                 |
| --------------------------- | -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| begin                       | (simulation) seconds | The first time step the values were collected in                                                                                                                                                            |
| end                         | (simulation) seconds | The last time step + DELTA_T the values were collected in (may be equal to begin)                                                                                                                           |
| id                          | id                   | The id of the detector (needed if several detectors share an output file)                                                                                                                                   |
| sampledSeconds              | s                    | The total time all vehicles which contributed data were on the detector. this may be fractional even if the time step is one second, because the times when the vehicle enters and leaves are interpolated. |
| nVehEntered                 | #                    | The number of vehicles that entered the detector in the corresponding interval.                                                                                                                             |
| nVehLeft                    | #                    | The number of vehicles that left the detector in the corresponding interval.                                                                                                                                |
| nVehSeen                    | #                    | The number of vehicles that were on the detector in the corresponding interval (were "seen" by the detector).                                                                                               |
| meanSpeed                   | m/s                  | The mean velocity over all collected data samples.                                                                                                                                                          |
| meanTimeLoss                | s                    | The average time loss per vehicle in the corresponding interval. The total time loss can be obtained by multiplying this value with nVehSeen.                                                               |
| meanOccupancy               | %                    | The percentage (0-100%) of the detector's place that was occupied by vehicles, summed up for each time step and averaged by the interval duration.                                                          |
| maxOccupancy                | %                    | The maximum percentage (0-100%) of the detector's place that was occupied by vehicles during the interval.                                                                                                  |
| meanMaxJamLengthInVehicles  | #vehicles            | The length of the longest jams recognized during each step, averaged over the interval duration. In vehicles that have contributed to these jams.                                                           |
| meanMaxJamLengthInMeters    | m                    | As prior, but in meters (see notes)                                                                                                                                                                         |
| maxJamLengthInVehicles      | #vehicles            | The length of the longest jam recognized during the interval duration. In vehicles that have contributed to this jams.                                                                                      |
| maxJamLengthInMeters        | m                    | As prior, but in meters (see notes)                                                                                                                                                                         |
| jamLengthInVehiclesSum      | #vehicles            | The sum of all lengths of all jams recognized during the interval. In vehicles that have contributed to these jams.                                                                                         |
| jamLengthInMetersSum        | m                    | As prior, but in meters (see notes)                                                                                                                                                                         |
| meanHaltingDuration         | s                    | The mean halting duration of vehicles that entered the area and are still inside or have left the area within the reported interval.                                                                        |
| maxHaltingDuration          | s                    | The maximum halting duration of vehicles that entered the area and are still inside or have left the area within the reported interval.                                                                     |
| haltingDurationSum          | s                    | The sum of all halting durations of vehicles that entered the area and are still inside or have left the area within the reported interval.                                                                 |
| meanIntervalHaltingDuration | s                    | The mean halting duration of vehicles that entered the area and are still inside or have left the area within the reported interval, counted from the interval's begin.                                     |
| maxIntervalHaltingDuration  | s                    | The maximum halting duration of vehicles that entered the area and are still inside or have left the area within the reported interval, counted from the interval's begin.                                  |
| intervalHaltingDurationSum  | s                    | The sum of all halting durations of vehicles that entered the area and are still inside or have left the area within the reported interval, counted from the interval's begin.                              |
| startedHalts                | #                    | The number of started halts. Please note that during an interval a vehicle may stop halting and enter a new halting state.                                                                                  |
| meanVehicleNumber           | #                    | The mean number of vehicles that were on the detector (averaged over the interval duration).                                                                                                                |
| maxVehicleNumber            | #                    | The maximum number of vehicles that were on the detector area during the interval.                                                                                                                          |

# Raporlar

[Output - SUMO Documentation](https://sumo.dlr.de/docs/Tools/Output.html)

- CO emission
- CO2 emission
- HC emission
- PMx emission
- NOx emission
- fuel consumption

# ArcView dosyalarının SUMO'da kullanılması

[ArcView - SUMO Documentation](https://sumo.dlr.de/docs/Networks/Import/ArcView.html)

# Toplu Taşıma Tanımlarının Yapılması

[Public Transport Tutorial - SUMO Documentation](https://sumo.dlr.de/docs/Tutorials/PublicTransport.html)

# Yayalar

[Pedestrians - SUMO Documentation](https://sumo.dlr.de/docs/Simulation/Pedestrians.html)

# İstatistiklerden Trafik Taleplerinin Oluşturulması

## Activity-based Demand Generation

[Activity-based Demand Generation - SUMO Documentation](https://sumo.dlr.de/docs/Demand/Activity-based_Demand_Generation.html#limitations)

[Automatic Routing - SUMO Documentation](https://sumo.dlr.de/docs/Demand/Automatic_Routing.html)

[Lehrstuhl für Datenverarbeitung: Fidens](https://web.archive.org/web/20120313075112/http://www.ldv.ei.tum.de/en/research/fidens/)

[Dynamic User Assignment - SUMO Documentation](https://sumo.dlr.de/docs/Demand/Dynamic_User_Assignment.html)

# Simulasyon Ortamıyla Dışarıdan Etkileşim

[Automatic Routing - SUMO Documentation](https://sumo.dlr.de/docs/Demand/Automatic_Routing.html#traci)

[TraCI4Traffic Lights - SUMO Documentation](https://sumo.dlr.de/docs/Tutorials/TraCI4Traffic_Lights.html)

[Interfacing TraCI from Python - SUMO Documentation](https://sumo.dlr.de/docs/TraCI/Interfacing_TraCI_from_Python.html)

[Python: module traci._lanearea](https://sumo.dlr.de/pydoc/traci._lanearea.html)

[Libsumo - SUMO Documentation](https://sumo.dlr.de/docs/Libsumo.html)

[Sumolib - SUMO Documentation](https://sumo.dlr.de/docs/Tools/Sumolib.html)

[Simpla - SUMO Documentation](https://sumo.dlr.de/docs/Simpla.html)

[TraCIPedCrossing - SUMO Documentation](https://sumo.dlr.de/docs/Tutorials/TraCIPedCrossing.html)

# Eclipse Sumo Kodunun Derlenmesi

Aşağıdaki linkten kodun temini ile ilgili kısımları uygulayınız.

[GitHub - eclipse/sumo: Eclipse SUMO is an open source, highly portable, microscopic and continuous traffic simulation package designed to handle large networks. It allows for intermodal simulation including pedestrians and comes with a large set of tools for scenario creation.](https://github.com/eclipse/sumo)

Windows İşletim Sistemi için aşağıdaki adımları uygulayınız.

[Windows Build - SUMO Documentation](https://sumo.dlr.de/docs/Installing/Windows_Build.html)



# SUMO Dersleri (Giriş Seviyesi)

## Kurulum

[SUMO - Simulation of Urban Mobility installation and PATH configuration - YouTube](https://www.youtube.com/watch?v=R0tyxMw9Uyc&ab_channel=ShckTchamna%28Ca%E1%B7%85mn%C3%A0%27%29)

## El ile XML tabanlı Harita Oluşturulması

[Sumo (Simulation of Urban Mobility) Tutorial Part 1: Manually Creation of Network - YouTube](https://www.youtube.com/watch?v=9MyIABer_NY&ab_channel=ShckTchamna%28Ca%E1%B7%85mn%C3%A0%27%29)

## OpenStreetMap ile Harita Oluşturulması ve Rastgele Rota Oluşturulması

[Sumo (Simulation of Urban Mobility) Tutorial Part 2: From OSM to Network + Random Trips Simulation - YouTube](https://www.youtube.com/watch?v=LWecm_rCPJw)

## OD Matrisi ile Rota Oluşturulması

[Sumo (Simulation of Urban Mobility) Tutorial Part 3: OD Matrix to trip and route Generation - YouTube](https://www.youtube.com/watch?v=R6v7wDkvXrk&ab_channel=ShckTchamna%28Ca%E1%B7%85mn%C3%A0%27%29)

## SUMO ile Raporlama

[Sumo, Simulation of Urban Mobility: Output Trace Files and Metrics, part 1 - YouTube](https://www.youtube.com/watch?v=5q7WiKiRUC4&ab_channel=ShckTchamna%28Ca%E1%B7%85mn%C3%A0%27%29)



## Omnet++ (Objective Modular Network Testbed in C++) Kurulumu

[Omnet ++ Download and Install for Windows - YouTube](https://www.youtube.com/watch?v=WnEJ7l2m_vQ&ab_channel=ShckTchamna%28Ca%E1%B7%85mn%C3%A0%27%29)

[OMNeT++ Downloads](https://omnetpp.org/download/)



[Omnet++ Quick Understanding: Theory and Simulation of the Hello World on Windows - YouTube](https://www.youtube.com/watch?v=dJsuZccT0AU)



[Getting started with OMNET++, INET, Veins, and SUMO - YouTube](https://www.youtube.com/watch?v=PfAWhrmoYgM&ab_channel=Dr.JoanneSkiles)



## SUMO'dan Omnet++ için Çıktı Alınması

[From SUMO to Other Network Simulators (TraceExporter): OMNET, Ns2/Ns3, VANET, PHEM, - YouTube](https://www.youtube.com/watch?v=voZrb6IKiYU&ab_channel=ShckTchamna%28Ca%E1%B7%85mn%C3%A0%27%29)



## SUMO ve OMNET++ Simulasyonu

[Simulation of SUMO Files in OMNeT++ - YouTube](https://www.youtube.com/watch?v=j0oHkRwiA8A&ab_channel=TheDefeatedEngineer)

[What are OMNeT ++, SUMO &amp; Veins ? | Tutorial #1 - YouTube](https://www.youtube.com/watch?v=Tb6OUxrzy-I&list=PLJfaBuRXBgpd6Qg4hqS2Ul9blAYYFx5XG&ab_channel=TheDefeatedEngineer)





## TraCI (Traffic Control Interface)



## SUMO Rerouting

[Driving in Circles - SUMO Documentation](https://sumo.dlr.de/docs/Tutorials/Driving_in_Circles.html)
