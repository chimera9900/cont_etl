$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' -cp '.;../lib/routines.jar;../lib/advancedPersistentLookupLib-1.2.jar;../lib/commons-collections-3.2.2.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/jboss-serialization.jar;../lib/log4j-1.2.17.jar;../lib/mysql-connector-java-8.0.12.jar;../lib/trove.jar;product_dim_load_0_1.jar;' cont_etl.product_dim_load_0_1.product_dim_load  --context=Default $args