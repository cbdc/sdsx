<resource schema="sdsx">
  <meta name="title">Swift DeepSky living catalog</meta>
  <meta name="creationDate">2018-06-06T01:02:03</meta>
  <meta name="description">
  The SDSX catalog is the result of the Swift DeepSky pipeline,
  dynamically updated every hour/day.
  </meta>
  <meta name="creator.name">Carlos H. Brandt and Paolo Giommi</meta>

  <meta name="subject">catalogs</meta>
  <meta name="subject">photometry</meta>
  <meta name="subject">high energy</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">X-ray</meta>
  </meta>

<!--
  <meta name="_longdoc" format="rst">
  </meta>
-->

  <meta name="source">
    2018AA.inpress;
  </meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main_pub" onDisk="True" mixin="//scs#q3cindex"
    primary="OBJID">
    <index columns="RA,DEC"/>

    <column>
      <name>OBJID</name>
      <ucd>meta.id;meta.main</ucd>
      <description>Object ID</description>
      <type>integer</type>
      <required>yes</required>
    </column>
    <column>
      <name>NAME</name>
      <ucd>meta.id</ucd>
      <description>Object designation</description>
      <type>text</type>
      <required>yes</required>
    </column>
    <column>
      <name>RA</name>
      <unit>deg</unit>
      <ucd>pos.eq.ra;meta.main</ucd>
      <description>Right Ascension</description>
      <required>yes</required>
    </column>
    <column>
      <name>DEC</name>
      <unit>deg</unit>
      <ucd>pos.eq.dec;meta.main</ucd>
      <description>Declination</description>
      <required>yes</required>
    </column>
    <column>
      <name>NH</name>
      <unit>cm-2</unit>
      <ucd>phys.columnDensity</ucd>
      <description>Total HI column density</description>
    </column>
    <column>
      <name>ENERGY_SLOPE</name>
      <ucd>spect.index</ucd>
      <description>Hard/Soft flux ratio</description>
    </column>
    <column>
      <name>ENERGY_SLOPE_ERROR</name>
      <ucd>stat.error;spect.index</ucd>
      <type>text</type>
      <description>Hard/Soft flux ratio error</description>
      <values nullLiteral="-999"/>
    </column>
    <column>
      <name>EXPOSURE_TIME</name>
      <unit>s</unit>
      <ucd>time.duration;obs.exposure</ucd>
      <description>Total exposure time (non-contiguous)</description>
    </column>
    <column>
      <name>NUFNU_3000EV</name>
      <!-- <name>nufnu_3keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <ucd>phot.flux;em.X-ray</ucd>
      <description>Full band nuFnu-flux at 3000eV</description>
      <type>double precision</type>
    </column>
    <column>
      <name>NUFNU_ERROR_3000EV</name>
      <!-- <name>nufnu_error_3keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <ucd>stat.error;phot.flux;em.X-ray</ucd>
      <description>Full band nuFnu-flux at 3000eV</description>
      <type>double precision</type>
    </column>
    <column>
      <name>NUFNU_500EV</name>
      <!-- <name>nufnu_0.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.soft</ucd>
      <description>soft nuFnu-flux at 500ev</description>
    </column>
    <column>
      <name>NUFNU_ERROR_500EV</name>
      <!-- <name>nufnu_error_0.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>stat.error;phot.flux;em.X-ray.soft</ucd>
      <description>soft nuFnu-flux at 500ev</description>
    </column>
    <column>
      <name>UPPER_LIMIT_500EV</name>
      <!-- <name>upper_limit_0.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.soft;stat.max</ucd>
      <description>medium nuFnu-flux at 500ev</description>
    </column>
    <column>
      <name>NUFNU_1500EV</name>
      <!-- <name>nufnu_1.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.medium</ucd>
      <description>medium nuFnu-flux at 1500ev</description>
    </column>
    <column>
      <name>NUFNU_ERROR_1500EV</name>
      <!-- <name>nufnu_error_1.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>stat.error;phot.flux;em.X-ray.medium</ucd>
      <description>medium nuFnu-flux at 1500ev</description>
    </column>
    <column>
      <name>UPPER_LIMIT_1500EV</name>
      <!-- <name>upper_limit_1.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.medium;stat.max</ucd>
      <description>medium nuFnu-flux at 1500ev</description>
    </column>
    <column>
      <name>NUFNU_4500EV</name>
      <!-- <name>nufnu_4.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.hard</ucd>
      <description>hard nuFnu-flux at 4.5keV</description>
    </column>
    <column>
      <name>NUFNU_ERROR_4500EV</name>
      <!-- <name>nufnu_error_4.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>stat.error;phot.flux;em.X-ray.hard</ucd>
      <description>hard nuFnu-flux at 4.5keV</description>
    </column>
    <column>
      <name>UPPER_LIMIT_4500EV</name>
      <!-- <name>upper_limit_4.5keV</name> -->
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.hard;stat.max</ucd>
      <description>hard nuFnu-flux at 4.5keV</description>
    </column>
    <column>
      <name>COUNTRATES_300_10000EV</name>
      <!-- <name>countrates_0.3_10keV</name> -->
      <unit>ph.s-1</unit>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 0.3-10keV</description>
    </column>
    <column>
      <name>COUNTRATES_ERROR_300_10000EV</name>
      <!-- <name>countrates_error_0.3_10keV</name> -->
      <unit>ph.s-1</unit>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 0.3-10keV</description>
    </column>
    <column>
      <name>COUNTRATES_300_1000EV</name>
      <!-- <name>countrates_0.3_1keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 0.3-1keV</description>
    </column>
    <column>
      <name>COUNTRATES_ERROR_300_1000EV</name>
      <!-- <name>countrates_error_0.3_1keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 0.3-1keV</description>
    </column>
    <column>
      <name>UPPER_LIMIT_300_1000EV</name>
      <!-- <name>upper_limit_0.3_1keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.max</ucd>
      <description>upper-limit photon flux integrated in 0.3-1keV</description>
    </column>
    <column>
      <name>COUNTRATES_1000_2000EV</name>
      <!-- <name>countrates_1_2keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 1-2keV</description>
    </column>
    <column>
      <name>COUNTRATES_ERROR_1000_2000EV</name>
      <!-- <name>countrates_error_1_2keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 1-2keV</description>
    </column>
    <column>
      <name>UPPER_LIMIT_1000_2000EV</name>
      <!-- <name>upper_limit_1_2keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.max</ucd>
      <description>upper-limit photon flux integrated in 1-2keV</description>
    </column>
    <column>
      <name>COUNTRATES_2000_10000EV</name>
      <!-- <name>countrates_2_10keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 2-10keV</description>
    </column>
    <column>
      <name>COUNTRATES_ERROR_2000_10000EV</name>
      <!-- <name>countrates_error_2_10keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 2-10keV</description>
    </column>
    <column>
      <name>UPPER_LIMIT_2000_10000EV</name>
      <!-- <name>upper_limit_2_10keV</name> -->
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.max</ucd>
      <description>upper-limit photon flux integrated in 2-10keV</description>
    </column>
    <column>
      <name>RUNID</name>
      <ucd>meta.id</ucd>
      <description>Intermediate results package ID in the server</description>
      <type>text</type>
    </column>
  </table>

  <data id="import_pub">
    <sources>pub/table_flux.csv</sources>
    <csvGrammar delimiter=";"/>
    <make table="main_pub">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">SDSX living catalog</meta>
    <meta name="shortName">sdsx cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">0.98903</meta>
      <meta name="sr">5.0</meta>
    </meta>

    <dbCore queriedTable="main_pub">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <!--publish render="scs.xml" sets="local"/-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
