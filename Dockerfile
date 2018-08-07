FROM centos:7

COPY remi-safe.repo /etc/yum.repos.d/
COPY RPM-GPG-KEY-remi /etc/pki/rpm-gpg/
COPY Tuleap.repo /etc/yum.repos.d/

RUN yum install -y epel-release centos-release-scl vim && \
    yum install --enablerepo=TuleapC7 -y \
    nginx \
    php56-php-gd \
    php56-php-pecl \
    php56-php-pear \
    php56-php-soap \
    php56-php-mysqlnd \
    php56-php-xml \
    php56-php-mbstring \
    php56-php-cli \
    php56-php-opcache \
    php56-php-process \
    php56-php-pdo \
    php56-php-fpm \
    php56-php-ldap \
    php56-php-intl \
    php56-php-bcmath php-amqplib-amqplib \
    php56-php-pecl-xdebug \
    php-ZendFramework2-Loader \
    viewvc MySQL-python python-ldap viewvc-theme-tuleap \
    httpd mod_dav_svn logrotate sha1collisiondetector \
    mod_perl perl-DBI perl-LDAP perl-DBD-MySQL 'perl(Crypt::Eksblowfish::Bcrypt)' 'perl(Redis)' \
    supervisor; \
    yum clean all && \
    rm -rf /var/cache/yum
