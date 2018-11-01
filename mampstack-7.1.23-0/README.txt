		      Bitnami MAMP Stack 7.1.23-0
		    ===========================

1. OVERVIEW

The Bitnami Project was created to help spread the adoption of freely
available, high quality, open source web applications. Bitnami aims to make
it easier than ever to discover, download and install Open Source software 
such as document and content management systems, wikis and blogging 
software.

You can learn more about Bitnami at https://bitnami.com

Bitnami MAMP stack is an easy to install and easy to use open source Web 
Platform. It combines leading open source projects, such as Apache, MySQL 
and PHP with BitRock's extensive open source expertise to provide a consistent, 
painless way to deploy MAMP in any OS X environment.

You can learn more about Bitnami stacks at https://bitnami.com/stacks/

You can also add applications on top of this stack like WordPress, Drupal, Joomla!,
and more. You can download the Bitnami module for any of these applications
and install on top of your MAMP installation. That way, all of the Bitnami-packaged 
applications you want to run will share a single instance of Apache, MySQL and PHP 
which will save space and improve performance.

You can learn more about installing modules at
https://docs.bitnami.com/?page=infrastructure&name=mamp&section=how-can-i-add-applications-on-top-of-mamp


Bitnami MAMP is also available as a Virtual Machine Image or as a Cloud Image.
Bitnami Virtual Machine Images are pre-configured and include a minimal 
installation of Linux and a Bitnami stack. They are available for VMWare and 
the latest version of VirtualBox. Bitnami Cloud Images allow you to run a 
Bitnami stack in a cloud computing environment on a pay-as-you-go basis. 
Bitnami Cloud Images are currently available for Amazon EC2, with planned 
support for additional cloud environments.

You can learn more about Bitnami Virtual Machine Images and Cloud Images at
https://bitnami.com/learn_more


2. FEATURES

- Easy to Install

Bitnami stacks are built with one goal in mind: to make it as easy as
possible to install open source software. Our installers completely automate
the process of installing and configuring all of the software included in
each stack, so you can have everything up and running in just a few clicks.

- Independent

Bitnami stacks are completely self-contained, and therefore do not interfere
with any software already installed on your system. For example, you can
upgrade your system's MySQL or Apache Tomcat without fear of 'breaking' your
Bitnami stack.

- Integrated

By the time you click the 'finish' button on the installer, the whole stack
will be integrated, configured and ready to go. 

- Relocatable

Bitnami stacks can be installed in any directory. This allows you to have
multiple instances.


3. COMPONENTS

Bitnami MAMP stack ships with the following software versions:
 
   - Apache 2.4.35
   - MySQL 5.7.23
   - PHP 7.1.23
   - PHPMyAdmin 4.8.3
   - Varnish(TM) 4.1.0
   - ImageMagick 6.9.8
   - SQLite 3.8.5
   - ModSecurity 2.6.7
   - Libraries for Couchbase 2.0.5
   - Git 2.19.1

Optional components:

   - Zend Framework 3.0.3
   - Symfony 4.1.6.2
   - CodeIgniter 3.1.9
   - CakePHP 3.6.12
   - Smarty 3.1.33
   - Laravel 5.7.0

You can find a quick start guide and more documentation about all of the
components at:

http://docs.bitnami.com/?page=infrastructure&name=mamp


4. REQUIREMENTS

To install Bitnami MAMP stack you will need:

    - Intel x86 or compatible processor
    - Minimum of 256 MB RAM
    - Minimum of 150 MB hard drive space
    - An x86 OS X operating system
    - TCP/IP protocol support


5. INSTALLATION

The Bitnami MAMP stack is distributed as a binary executable installer.
It can be downloaded from:

https://bitnami.com/stacks/

The downloaded file will be named something similar to:

bitnami-mampstack-7.1.23-0-osx-x86-installer.dmg 

You can install Bitnami MAMP stack in graphical, text and unattended modes. 
By default the graphical mode will be used.

You will be greeted by the 'Welcome' screen. 

The next step is to select the installation directory. The default installation 
path will be a folder on your home directory if you are running the installer as 
a regular user, or /opt/mampstack-7.1.23-0, if you are running the 
installation as root. If the destination directory does not exist, it will be 
created as part of the installation.

After selecting the installation directory you will be asked for the password 
to the initial MySQL root and anonymous accounts. This password cannot be empty.

The default listening port for Apache is 8080 and for MySQL is 3306. If those 
ports are already in use by other applications, you will be prompted for 
alternate ports to use. Remember that if you plan to run both applications as a 
regular user you should select port numbers above 1024.

You are now ready to begin the installation, which will start when you press 
'Next'. 

Once the installation process has been completed, you will see the 'Installation 
Finished' page.

If you receive an error message during installation, please refer to the 
Troubleshooting section.

The rest of this guide assumes that you installed Bitnami MAMP stack in 
/Applications/mampstack-7.1.23-0 and that you use port 8080 for Apache and 3306 for MySQL.

6. STARTING AND STOPPING BITNAMI MAMP STACK

To enter to your application you can point your browser to
http://127.0.0.1:8080/

To start/stop/restart application you can use a graphical management tool
called 'manager-osx.app'. Double-click on that file or start it.

You can also use the command line ctlscript.sh utility:

       ./ctlscript.sh (start|stop|restart)
       ./ctlscript.sh (start|stop|restart) mysql
       ./ctlscript.sh (start|stop|restart) apache

  start      - start the service(s)
  stop       - stop  the service(s)
  restart    - restart or start the service(s)

If you selected an alternate port during installation, for example 18080, the
URL will look like:

http://127.0.0.1:18080/

7. RUNNING COMMANDS IN A CONSOLE

Bitnami console is a script that loads environment variables that need
to be present when using many of the command line tools included in
the stack, such as mysql, php or openssl.

All of the Native Installers for Bitnami Stacks are completely self-contained 
and run independently of the rest of the software or libraries installed
on your system. For this to work, certain environment variables need
to be configured properly. Before running any stack command line tool, you 
should start the "Bitnami console" to setup the environment. For example
to check the MySQL or PHP version.

On Linux or OS X, you have to start a Terminal and run the following commands
into your installation directory:

     ./use_mampstack
     php -v
     mysql -Version

On Windows, you can start the Bitnami console from the Start Menu:

    Start -> Program Files -> Bitnami WAMP Stack -> Use WAMP Stack

    php -v
    mysql -Version


8. DIRECTORY STRUCTURE

The installation process will create several subfolders under the main 
installation directory:

   manager-osx.app: Graphical tool to manage the servers easily
   ctlscript.sh: Script to manage the servers
   uninstall: Uninstaller
   use_mampstack: Script to load the stack environment

   apache2/: Apache Web server.
   php/: PHP Scripting Language.
   mysql/: MySQL Database.
   common/: common libraries.
   varnish/: Varnish(TM) cache server (disabled by default)
   sqlite/: SQLite database server
   licenses/: Licenses of the components included in MAMP stack.
   frameworks/: PHP frameworks selected during the installation
   docs/: Documents for creating a custom application
   apps/
	phpMyAdmin/: Management tool for MySQL


9. CREATING AN EXAMPLE

In the doc/ folder you can find two examples to start working with
Bitnami MAMP stack. Take a look at the docs/README.txt file to know
how to create your own PHP application.


10. TROUBLESHOOTING

You can find a quick start guide and more documentation about all of the
components at:

http://docs.bitnami.com/?page=infrastructure&name=mamp

In addition to the resources provided below, we encourage you to post your
 questions and suggestions at:

https://community.bitnami.com

We also encourage you to sign up for our newsletter, which we'll use to
announce new releases and new stacks. To do so, just register at:
https://bitnami.com/newsletter. 


10.1 Installer

# Installer Payload Error

If you get the following error while trying to run the installer from the
command line:

"Installer payload initialization failed. This is likely due to an
incomplete or corrupt downloaded file" 

The installer binary is not complete, likely because the file was
not downloaded correctly. You will need to download the file and
repeat the installation process.


11. LICENSES

Apache Web Server is distributed under the Apache License v2.0, which
is located at http://www.apache.org/licenses/LICENSE-2.0

MySQL is distributed under the GNU General Public License v2, which is
located at http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

phpMyAdmin is distributed under the GNU General Public License v2, which is
located at http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

PHP and related libraries are distributed under the PHP License v3.01,
which is located at http://www.php.net/license/3_01.txt

SQLite has been dedicated to the public domain by the authors, which is located at
http://www.sqlite.org/copyright.html

Varnish(TM) is distributed under the FreeBSD license, which is located at
https://www.varnish-cache.org/trac/browser/LICENSE

curl is distributed under the Curl License, which is located at
http://curl.haxx.se/docs/copyright.html

expat is distributed under the MIT License, which is located at
http://www.jclark.com/xml/copying.txt

gd is distributed under the gd License, which is located at
http://www.boutell.com/gd/manual2.0.33.html

IMAP is distributed under the University of Washington Free-Fork
License, located at http://www.washington.edu/imap/legal.html

jpegsrc is distributed under The Independent JPEG Group's JPEG
software license, which is located at
http://dev.w3.org/cvsweb/Amaya/libjpeg/README?rev=1.2

libiconv is distributed under the Lesser General Public License
(LGPL), located at http://www.gnu.org/copyleft/lesser.html

ImageMagick has its own license, which is located at
https://www.imagemagick.org/subversion/ImageMagick/trunk/LICENSE

OpenSSL is released under the terms of the Apache License, which is
located at http://www.openssl.org/source/license.html

Zlib is released under the zlib License (a free software license/compatible 
with GPL), which is located at http://www.gzip.org/zlib/zlib_license.html

OpenLDAP is released under OpenLDAP Public License, which is located at
http://www.openldap.org/devel/cvsweb.cgi/~checkout~//LICENSE?rev=1.24

Freetype is released under The Freetype Project License, that is located at
http://freetype.sourceforge.net/FTL.TXT

ModSecurity is released under the GNU General Public License v2, which is
located at http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

 



