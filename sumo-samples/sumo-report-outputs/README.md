SUMO ile aşağıdaki gibi ağ ve rota girdileri sağlayarak farklı çıktılar elde edebiliriz.

[Output - SUMO Documentation](https://sumo.dlr.de/docs/Simulation/Output/index.html)



##### Girdiler

- Network

- Route File

###### Çıktılar

- Position,Speed,Vehicle angle

- Lane, Edge, Lane Change

- Emission-Output
  
  - CO2
  
  - CO
  
  - Nox
  
  - etc

- TTC, brake rate, bumper to bumper distance,

- DRAC (deceleration to avoid a crash), etc.



Bu uygulamada OSM ile oluşturduğumuz örneği kullanacağız.

## 1-  Floating Car Data (FCD)

- location

- speed

- vehicle angle

- position

- lane

her bir araç için her adım da loglanır.

GPS datası gibi işlenir. **TraceExporter** ile işlenebilir. 

```batch
sumo -c rize.sumocfg -fcd-output sumoTrace.xml
```

###### sumoTrace.xml (kısmen)

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- generated on 2021-11-22 01:29:32 by Eclipse SUMO sumo Version 1.10.0
<configuration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/sumoConfiguration.xsd">

    <input>
        <net-file value="rize.net.xml"/>
        <route-files value="rize.rou.xml"/>
        <additional-files value="osm.poly.xml"/>
    </input>

    <output>
        <fcd-output value="sumoTrace.xml"/>
    </output>

    <time>
        <begin value="0"/>
        <end value="2000"/>
    </time>

</configuration>
-->

<fcd-export xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/fcd_file.xsd">
    <timestep time="0.00">
        <vehicle id="0" x="5717.83" y="4196.06" angle="141.03" type="DEFAULT_VEHTYPE" speed="0.00" pos="5.10" lane="220959929_0" slope="0.00"/>
    </timestep>
    <timestep time="1.00">
        <vehicle id="0" x="5718.94" y="4194.69" angle="141.03" type="DEFAULT_VEHTYPE" speed="1.76" pos="6.86" lane="220959929_0" slope="0.00"/>
        <vehicle id="1" x="2640.34" y="2696.48" angle="78.86" type="DEFAULT_VEHTYPE" speed="0.00" pos="5.10" lane="-707231895#0_0" slope="0.00"/>
    </timestep>
    <timestep time="2.00">
        <vehicle id="0" x="5721.60" y="4191.40" angle="141.03" type="DEFAULT_VEHTYPE" speed="4.24" pos="11.10" lane="220959929_0" slope="0.00"/>
        <vehicle id="1" x="2642.83" y="2696.15" angle="97.55" type="DEFAULT_VEHTYPE" speed="2.51" pos="7.61" lane="-707231895#0_0" slope="0.00"/>
        <vehicle id="2" x="7114.18" y="5476.48" angle="312.03" type="DEFAULT_VEHTYPE" speed="0.00" pos="5.10" lane="482092794#0_0" slope="0.00"/>
    </timestep>
    <timestep time="3.00">
        <vehicle id="0" x="5725.50" y="4186.58" angle="141.03" type="DEFAULT_VEHTYPE" speed="6.20" pos="17.30" lane="220959929_0" slope="0.00"/>
        <vehicle id="1" x="2647.08" y="2694.39" angle="111.45" type="DEFAULT_VEHTYPE" speed="4.66" pos="12.27" lane="-707231895#0_0" slope="0.00"/>
        <vehicle id="2" x="7113.21" y="5477.36" angle="312.03" type="DEFAULT_VEHTYPE" speed="1.30" pos="6.40" lane="482092794#0_0" slope="0.00"/>
        <vehicle id="3" x="3391.61" y="1712.14" angle="127.28" type="DEFAULT_VEHTYPE" speed="0.00" pos="5.10" lane="732830934#2_0" slope="0.00"/>
    </timestep>
```

## Raw Vehicle Positions Dump

```batch
sumo -c rize.sumocfg --netstate-dump rize_dump_file.xml
```

###### rize_dump_file.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- generated on 2021-11-22 01:33:13 by Eclipse SUMO sumo Version 1.10.0
<configuration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/sumoConfiguration.xsd">

    <input>
        <net-file value="rize.net.xml"/>
        <route-files value="rize.rou.xml"/>
        <additional-files value="osm.poly.xml"/>
    </input>

    <output>
        <netstate-dump value="rize_dump_file.xml"/>
    </output>

    <time>
        <begin value="0"/>
        <end value="2000"/>
    </time>

</configuration>
-->

<netstate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/netstate_file.xsd">
    <timestep time="0.00">
        <edge id="220959929">
            <lane id="220959929_0">
                <vehicle id="0" pos="5.10" speed="0.00"/>
            </lane>
        </edge>
    </timestep>
    <timestep time="1.00">
        <edge id="-707231895#0">
            <lane id="-707231895#0_0">
                <vehicle id="1" pos="5.10" speed="0.00"/>
            </lane>
        </edge>
        <edge id="220959929">
            <lane id="220959929_0">
                <vehicle id="0" pos="6.86" speed="1.76"/>
            </lane>
        </edge>
    </timestep>
```

Bu aynı zamanda configurasyon dosyasına da eklenebilir

```xml
<output>
    <netstate-dump value="rize_dump_file.xml"/>
</output>
```

###### rize.sumocfg

```xml
<configuration>

    <input>
        <net-file value="rize.net.xml"/>
        <route-files value="rize.rou.xml"/>
		<additional-files value="osm.poly.xml"/>
    </input>
    
    <output>
        <netstate-dump value="rize_dump_file.xml"/>
    </output>
    
    <time>
        <begin value="0"/>
        <end value="2000"/>
    </time>

</configuration>
```

## 2- Emisyon Çıktısı

CO2, CO, HC, NOX, Yakıt, Elektrik, Ses

```bash
sumo -c rize.sumocfg --emission-output rize_emission_file.xml
```

###### rize_emission_file.xml (kısmen)

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- generated on 2021-11-22 01:40:48 by Eclipse SUMO sumo Version 1.10.0
<configuration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/sumoConfiguration.xsd">

    <input>
        <net-file value="rize.net.xml"/>
        <route-files value="rize.rou.xml"/>
        <additional-files value="osm.poly.xml"/>
    </input>

    <output>
        <emission-output value="rize_emission_file.xml"/>
    </output>

    <time>
        <begin value="0"/>
        <end value="2000"/>
    </time>

</configuration>
-->

<emission-export xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/emission_file.xsd">
    <timestep time="0.00">
        <vehicle id="0" eclass="HBEFA3/PC_G_EU4" CO2="2624.72" CO="164.78" HC="0.81" NOx="1.20" PMx="0.07" fuel="1.13" electricity="0.00" noise="55.94" route="!0" type="DEFAULT_VEHTYPE" waiting="0.00" lane="220959929_0" pos="5.10" speed="0.00" angle="141.03" x="5717.83" y="4196.06"/>
    </timestep>
    <timestep time="1.00">
        <vehicle id="0" eclass="HBEFA3/PC_G_EU4" CO2="3230.99" CO="147.39" HC="0.75" NOx="1.44" PMx="0.07" fuel="1.39" electricity="0.00" noise="64.37" route="!0" type="DEFAULT_VEHTYPE" waiting="0.00" lane="220959929_0" pos="6.86" speed="1.76" angle="141.03" x="5718.94" y="4194.69"/>
        <vehicle id="1" eclass="HBEFA3/PC_G_EU4" CO2="2624.72" CO="164.78" HC="0.81" NOx="1.20" PMx="0.07" fuel="1.13" electricity="0.00" noise="55.94" route="!1" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-707231895#0_0" pos="5.10" speed="0.00" angle="78.86" x="2640.34" y="2696.48"/>
    </timestep>
    <timestep time="2.00">
        <vehicle id="0" eclass="HBEFA3/PC_G_EU4" CO2="4953.44" CO="145.28" HC="0.78" NOx="2.19" PMx="0.11" fuel="2.13" electricity="0.00" noise="68.52" route="!0" type="DEFAULT_VEHTYPE" waiting="0.00" lane="220959929_0" pos="11.10" speed="4.24" angle="141.03" x="5721.60" y="4191.40"/>
        <vehicle id="1" eclass="HBEFA3/PC_G_EU4" CO2="3987.62" CO="151.14" HC="0.78" NOx="1.78" PMx="0.09" fuel="1.71" electricity="0.00" noise="67.94" route="!1" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-707231895#0_0" pos="7.61" speed="2.51" angle="97.55" x="2642.83" y="2696.15"/>
        <vehicle id="2" eclass="HBEFA3/PC_G_EU4" CO2="2624.72" CO="164.78" HC="0.81" NOx="1.20" PMx="0.07" fuel="1.13" electricity="0.00" noise="55.94" route="!2" type="DEFAULT_VEHTYPE" waiting="0.00" lane="482092794#0_0" pos="5.10" speed="0.00" angle="312.03" x="7114.18" y="5476.48"/>
    </timestep>
    <timestep time="3.00">
        <vehicle id="0" eclass="HBEFA3/PC_G_EU4" CO2="5281.89" CO="126.00" HC="0.70" NOx="2.29" PMx="0.11" fuel="2.27" electricity="0.00" noise="67.11" route="!0" type="DEFAULT_VEHTYPE" waiting="0.00" lane="220959929_0" pos="17.30" speed="6.20" angle="141.03" x="5725.50" y="4186.58"/>
        <vehicle id="1" eclass="HBEFA3/PC_G_EU4" CO2="4803.58" CO="136.35" HC="0.73" NOx="2.11" PMx="0.10" fuel="2.06" electricity="0.00" noise="67.27" route="!1" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-707231895#0_0" pos="12.27" speed="4.66" angle="111.45" x="2647.08" y="2694.39"/>
        <vehicle id="2" eclass="HBEFA3/PC_G_EU4" CO2="2912.48" CO="148.35" HC="0.74" NOx="1.30" PMx="0.07" fuel="1.25" electricity="0.00" noise="62.18" route="!2" type="DEFAULT_VEHTYPE" waiting="0.00" lane="482092794#0_0" pos="6.40" speed="1.30" angle="312.03" x="7113.21" y="5477.36"/>
        <vehicle id="3" eclass="HBEFA3/PC_G_EU4" CO2="2624.72" CO="164.78" HC="0.81" NOx="1.20" PMx="0.07" fuel="1.13" electricity="0.00" noise="55.94" route="!3" type="DEFAULT_VEHTYPE" waiting="0.00" lane="732830934#2_0" pos="5.10" speed="0.00" angle="127.28" x="3391.61" y="1712.14"/>
    </timestep>
    <timestep time="4.00">
        <vehicle id="0" eclass="HBEFA3/PC_G_EU4" CO2="7561.73" CO="145.00" HC="0.84" NOx="3.30" PMx="0.16" fuel="3.25" electricity="0.00" noise="70.27" route="!0" type="DEFAULT_VEHTYPE" waiting="0.00" lane="220959929_0" pos="25.93" speed="8.63" angle="141.03" x="5730.93" y="4179.87"/>
        <vehicle id="1" eclass="HBEFA3/PC_G_EU4" CO2="4293.75" CO="107.67" HC="0.59" NOx="1.83" PMx="0.08" fuel="1.85" electricity="0.00" noise="64.57" route="!1" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-707231895#0_0" pos="18.30" speed="6.04" angle="117.42" x="2652.44" y="2691.61"/>
        <vehicle id="2" eclass="HBEFA3/PC_G_EU4" CO2="3589.35" CO="135.94" HC="0.70" NOx="1.58" PMx="0.08" fuel="1.54" electricity="0.00" noise="64.40" route="!2" type="DEFAULT_VEHTYPE" waiting="0.00" lane="482092794#0_0" pos="9.37" speed="2.96" angle="312.03" x="7111.01" y="5479.34"/>
        <vehicle id="3" eclass="HBEFA3/PC_G_EU4" CO2="2969.16" CO="147.95" HC="0.74" NOx="1.33" PMx="0.07" fuel="1.28" electricity="0.00" noise="62.63" route="!3" type="DEFAULT_VEHTYPE" waiting="0.00" lane="732830934#2_0" pos="6.50" speed="1.40" angle="127.28" x="3392.72" y="1711.29"/>
        <vehicle id="4" eclass="HBEFA3/PC_G_EU4" CO2="2624.72" CO="164.78" HC="0.81" NOx="1.20" PMx="0.07" fuel="1.13" electricity="0.00" noise="55.94" route="!4" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-778936907#7_0" pos="5.10" speed="0.00" angle="322.75" x="2389.69" y="3732.67"/>
    </timestep>
    <timestep time="5.00">
        <vehicle id="0" eclass="HBEFA3/PC_G_EU4" CO2="5832.73" CO="95.39" HC="0.57" NOx="2.45" PMx="0.11" fuel="2.51" electricity="0.00" noise="66.79" route="!0" type="DEFAULT_VEHTYPE" waiting="0.00" lane="220959929_0" pos="35.98" speed="10.05" angle="141.03" x="5737.25" y="4172.06"/>
        <vehicle id="1" eclass="HBEFA3/PC_G_EU4" CO2="7319.44" CO="142.23" HC="0.82" NOx="3.19" PMx="0.15" fuel="3.15" electricity="0.00" noise="69.97" route="!1" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-707231895#0_0" pos="26.72" speed="8.42" angle="116.77" x="2659.96" y="2687.82"/>
        <vehicle id="2" eclass="HBEFA3/PC_G_EU4" CO2="4705.82" CO="130.63" HC="0.71" NOx="2.05" PMx="0.10" fuel="2.02" electricity="0.00" noise="66.60" route="!2" type="DEFAULT_VEHTYPE" waiting="0.00" lane="482092794#0_0" pos="14.30" speed="4.93" angle="312.03" x="7107.35" y="5482.64"/>
        <vehicle id="3" eclass="HBEFA3/PC_G_EU4" CO2="4106.72" CO="139.36" HC="0.73" NOx="1.81" PMx="0.09" fuel="1.77" electricity="0.00" noise="66.29" route="!3" type="DEFAULT_VEHTYPE" waiting="0.00" lane="732830934#2_0" pos="9.94" speed="3.44" angle="127.28" x="3395.46" y="1709.21"/>
        <vehicle id="4" eclass="HBEFA3/PC_G_EU4" CO2="2995.77" CO="147.80" HC="0.74" NOx="1.34" PMx="0.07" fuel="1.29" electricity="0.00" noise="62.83" route="!4" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-778936907#7_0" pos="6.54" speed="1.44" angle="322.75" x="2388.82" y="3733.82"/>
        <vehicle id="5" eclass="HBEFA3/PC_G_EU4" CO2="2624.72" CO="164.78" HC="0.81" NOx="1.20" PMx="0.07" fuel="1.13" electricity="0.00" noise="55.94" route="!5" type="DEFAULT_VEHTYPE" waiting="0.00" lane="-482092794#5_0" pos="5.10" speed="0.00" angle="149.23" x="2770.28" y="3610.69"/>
    </timestep>
```



##### Full Output

```bash
sumo -c rize.sumocfg --full-output rize_full_output.xml
```

###### rize_full_output.xml (kısmen)

```xml
<full-export xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/full_file.xsd">
    <data timestep="0.00">
        <vehicles>
            <vehicle id="0" eclass="HBEFA3/PC_G_EU4" CO2="2624.72" CO="164.78" HC="0.81" NOx="1.20" PMx="0.07" fuel="1.13" electricity="0.00" noise="55.94" route="!0" type="DEFAULT_VEHTYPE" waiting="0.00" lane="220959929_0" pos="5.10" speed="0.00" angle="141.03" x="5717.83" y="4196.06"/>
        </vehicles>
        <edges>
            <edge id=":1100511574_0" traveltime="0.51">
                <lane id=":1100511574_0_0" CO="0.00" CO2="0.00" NOx="0.00" PMx="0.00" HC="0.00" noise="0.00" fuel="0.00" electricity="0.00" maxspeed="27.78" meanspeed="27.78" occupancy="0.00" vehicle_count="0"/>
            </edge>
            <edge id=":1100511574_1" traveltime="2.22">
                <lane id=":1100511574_1_0" CO="0.00" CO2="0.00" NOx="0.00" PMx="0.00" HC="0.00" noise="0.00" fuel="0.00" electricity="0.00" maxspeed="7.95" meanspeed="7.95" occupancy="0.00" vehicle_count="0"/>
            </edge>
            <edge id=":1100511574_2" traveltime="2.14">
                <lane id=":1100511574_2_0" CO="0.00" CO2="0.00" NOx="0.00" PMx="0.00" HC="0.00" noise="0.00" fuel="0.00" electricity="0.00" maxspeed="3.65" meanspeed="3.65" occupancy="0.00" vehicle_count="0"/>
            </edge>
            <edge id=":1100511574_9" traveltime="2.58">
                <lane id=":1100511574_9_0" CO="0.00" CO2="0.00" NOx="0.00" PMx="0.00" HC="0.00" noise="0.00" fuel="0.00" electricity="0.00" maxspeed="7.95" meanspeed="7.95" occupancy="0.00" vehicle_count="0"/>
            </edge>
            <edge id=":1100511574_10" traveltime="2.14">
                <lane id=":1100511574_10_0" CO="0.00" CO2="0.00" NOx="0.00" PMx="0.00" HC="0.00" noise="0.00" fuel="0.00" electricity="0.00" maxspeed="3.65" meanspeed="3.65" occupancy="0.00" vehicle_count="0"/>
            </edge>
            <edge id=":1100511574_3" traveltime="2.90">
                <lane id=":1100511574_3_0" CO="0.00" CO2="0.00" NOx="0.00" PMx="0.00" HC="0.00" noise="0.00" fuel="0.00" electricity="0.00" maxspeed="6.44" meanspeed="6.44" occupancy="0.00" vehicle_count="0"/>
            </edge>
```

...

## Lane-Change Report

```bash
sumo -c rize.sumocfg --lanechange-output rize_lane_change_file.xml
```

###### rize_lane_change_file.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!-- generated on 2021-11-22 02:42:53 by Eclipse SUMO sumo Version 1.10.0
<configuration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://sumo.dlr.de/xsd/sumoConfiguration.xsd">

    <input>
        <net-file value="rize.net.xml"/>
        <route-files value="rize.rou.xml"/>
        <additional-files value="osm.poly.xml"/>
    </input>

    <output>
        <lanechange-output value="rize_lane_change_file.xml"/>
    </output>

    <time>
        <begin value="0"/>
        <end value="2000"/>
    </time>

</configuration>
-->

<lanechanges>
    <change id="18" type="DEFAULT_VEHTYPE" time="40.00" from="707313622#1_0" to="707313622#1_1" dir="1" speed="24.20" pos="396.15" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="39" type="DEFAULT_VEHTYPE" time="52.00" from="707313624#1_0" to="707313624#1_1" dir="1" speed="6.30" pos="5.40" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="142.85" followerSecureGap="74.61" followerSpeed="23.99" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="39" type="DEFAULT_VEHTYPE" time="75.00" from="704147945_1" to="704147945_0" dir="-1" speed="25.53" pos="63.58" reason="keepRight" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="49" type="DEFAULT_VEHTYPE" time="85.00" from="704147946#1_0" to="704147946#1_1" dir="1" speed="27.11" pos="281.51" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="40" type="DEFAULT_VEHTYPE" time="115.00" from="704523453_1" to="704523453_0" dir="-1" speed="32.75" pos="6.45" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="45.52" followerSecureGap="0.00" followerSpeed="26.87" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="49" type="DEFAULT_VEHTYPE" time="117.00" from="707313623_1" to="707313623_0" dir="-1" speed="18.13" pos="52.03" reason="keepRight" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="3" type="DEFAULT_VEHTYPE" time="160.00" from="707313624#1_0" to="707313624#1_1" dir="1" speed="6.54" pos="5.57" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="41" type="DEFAULT_VEHTYPE" time="166.00" from="707313623_1" to="707313623_0" dir="-1" speed="19.90" pos="62.88" reason="keepRight" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="43" type="DEFAULT_VEHTYPE" time="177.00" from="707313625#1_0" to="707313625#1_1" dir="1" speed="11.61" pos="0.15" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="48" type="DEFAULT_VEHTYPE" time="183.00" from="707313625#2_0" to="707313625#2_1" dir="1" speed="15.48" pos="10.26" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="16" type="DEFAULT_VEHTYPE" time="199.00" from="980722880#1_1" to="980722880#1_0" dir="-1" speed="6.67" pos="0.65" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
    <change id="37" type="DEFAULT_VEHTYPE" time="584.00" from="707313624#1_0" to="707313624#1_1" dir="1" speed="6.80" pos="0.81" reason="strategic|urgent" leaderGap="None" leaderSecureGap="None" leaderSpeed="None" followerGap="None" followerSecureGap="None" followerSpeed="None" origLeaderGap="None" origLeaderSecureGap="None" origLeaderSpeed="None"/>
</lanechanges>
```

##### VKT output

```bash
sumo -c rize.sumocfg --vtk-output rize_vkt_file.xml
```

## Çarpışmalar

```bash
sumo -c rize.sumocfg --collision-output rize_collision_file.xml
```

...
