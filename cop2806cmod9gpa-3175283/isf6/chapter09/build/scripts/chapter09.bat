@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  chapter09 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and CHAPTER09_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\chapter09-plain.jar;%APP_HOME%\lib\spring-boot-starter-artemis-3.0.0-M4.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-3.0.0-M4.jar;%APP_HOME%\lib\spring-boot-starter-aop-3.0.0-M4.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-3.0.0-M4.jar;%APP_HOME%\lib\spring-boot-starter-3.0.0-M4.jar;%APP_HOME%\lib\spring-boot-starter-logging-3.0.0-M4.jar;%APP_HOME%\lib\logback-classic-1.2.11.jar;%APP_HOME%\lib\h2-2.1.214.jar;%APP_HOME%\lib\artemis-jms-server-2.24.0.jar;%APP_HOME%\lib\logback-core-1.2.11.jar;%APP_HOME%\lib\spring-data-jpa-3.0.0-M5.jar;%APP_HOME%\lib\HikariCP-5.0.1.jar;%APP_HOME%\lib\spring-data-commons-3.0.0-M5.jar;%APP_HOME%\lib\log4j-to-slf4j-2.18.0.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.36.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\hibernate-core-6.1.1.Final.jar;%APP_HOME%\lib\spring-aspects-6.0.0-M5.jar;%APP_HOME%\lib\spring-jms-6.0.0-M5.jar;%APP_HOME%\lib\artemis-jakarta-client-2.23.1.jar;%APP_HOME%\lib\artemis-server-2.23.1.jar;%APP_HOME%\lib\artemis-jdbc-store-2.23.1.jar;%APP_HOME%\lib\artemis-journal-2.23.1.jar;%APP_HOME%\lib\artemis-service-extensions-2.23.1.jar;%APP_HOME%\lib\artemis-jms-client-2.24.0.jar;%APP_HOME%\lib\artemis-core-client-2.23.1.jar;%APP_HOME%\lib\artemis-selector-2.23.1.jar;%APP_HOME%\lib\artemis-commons-2.23.1.jar;%APP_HOME%\lib\activemq-artemis-native-1.0.2.jar;%APP_HOME%\lib\jboss-logging-3.5.0.Final.jar;%APP_HOME%\lib\jakarta.jms-api-3.0.0.jar;%APP_HOME%\lib\jakarta.transaction-api-2.0.1.jar;%APP_HOME%\lib\spring-boot-autoconfigure-3.0.0-M4.jar;%APP_HOME%\lib\spring-boot-3.0.0-M4.jar;%APP_HOME%\lib\spring-context-6.0.0-M5.jar;%APP_HOME%\lib\spring-aop-6.0.0-M5.jar;%APP_HOME%\lib\aspectjweaver-1.9.9.1.jar;%APP_HOME%\lib\spring-orm-6.0.0-M5.jar;%APP_HOME%\lib\spring-jdbc-6.0.0-M5.jar;%APP_HOME%\lib\jakarta.persistence-api-3.0.0.jar;%APP_HOME%\lib\hibernate-commons-annotations-6.0.2.Final.jar;%APP_HOME%\lib\jandex-2.4.2.Final.jar;%APP_HOME%\lib\classmate-1.5.1.jar;%APP_HOME%\lib\byte-buddy-1.12.12.jar;%APP_HOME%\lib\jaxb-runtime-3.0.2.jar;%APP_HOME%\lib\jaxb-core-3.0.2.jar;%APP_HOME%\lib\jakarta.xml.bind-api-3.0.1.jar;%APP_HOME%\lib\jakarta.inject-api-2.0.0.jar;%APP_HOME%\lib\antlr4-runtime-4.10.jar;%APP_HOME%\lib\spring-tx-6.0.0-M5.jar;%APP_HOME%\lib\spring-messaging-6.0.0-M5.jar;%APP_HOME%\lib\spring-beans-6.0.0-M5.jar;%APP_HOME%\lib\spring-expression-6.0.0-M5.jar;%APP_HOME%\lib\spring-core-6.0.0-M5.jar;%APP_HOME%\lib\jakarta.annotation-api-2.0.0.jar;%APP_HOME%\lib\snakeyaml-1.30.jar;%APP_HOME%\lib\jgroups-5.2.0.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.79.Final-linux-x86_64.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.79.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.79.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.79.Final.jar;%APP_HOME%\lib\netty-handler-4.1.79.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.79.Final.jar;%APP_HOME%\lib\netty-codec-4.1.79.Final.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.79.Final.jar;%APP_HOME%\lib\netty-transport-classes-kqueue-4.1.79.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.79.Final.jar;%APP_HOME%\lib\netty-transport-4.1.79.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.79.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.79.Final.jar;%APP_HOME%\lib\netty-common-4.1.79.Final.jar;%APP_HOME%\lib\guava-30.1-jre.jar;%APP_HOME%\lib\jboss-logmanager-2.1.18.Final.jar;%APP_HOME%\lib\artemis-quorum-api-2.23.1.jar;%APP_HOME%\lib\jctools-core-2.1.2.jar;%APP_HOME%\lib\commons-beanutils-1.9.4.jar;%APP_HOME%\lib\commons-configuration2-2.7.jar;%APP_HOME%\lib\micrometer-core-1.10.0-M3.jar;%APP_HOME%\lib\jakarta.activation-2.0.1.jar;%APP_HOME%\lib\spring-jcl-6.0.0-M5.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\wildfly-common-1.5.1.Final.jar;%APP_HOME%\lib\commons-dbcp2-2.9.0.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\commons-text-1.8.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\micrometer-observation-1.10.0-M3.jar;%APP_HOME%\lib\micrometer-commons-1.10.0-M3.jar;%APP_HOME%\lib\txw2-3.0.2.jar;%APP_HOME%\lib\istack-commons-runtime-4.0.1.jar;%APP_HOME%\lib\log4j-api-2.18.0.jar;%APP_HOME%\lib\commons-pool2-2.11.1.jar


@rem Execute chapter09
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CHAPTER09_OPTS%  -classpath "%CLASSPATH%" md.MyDocsApp %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable CHAPTER09_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%CHAPTER09_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
