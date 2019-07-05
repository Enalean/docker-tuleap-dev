FROM centos:7

COPY remi-safe.repo /etc/yum.repos.d/
COPY RPM-GPG-KEY-remi /etc/pki/rpm-gpg/
COPY Tuleap.repo /etc/yum.repos.d/

RUN yum install -y epel-release centos-release-scl vim && \
    yum install --enablerepo=TuleapC7 -y \
    nginx \
    php72-php-gd \
    php72-php-soap \
    php72-php-mysqlnd \
    php72-php-xml \
    php72-php-mbstring \
    php72-php-cli \
    php72-php-opcache \
    php72-php-process \
    php72-php-pdo \
    php72-php-fpm \
    php72-php-ldap \
    php72-php-intl \
    php72-php-bcmath \
    php72-php-pecl-xdebug \
    php73-php-gd \
    php73-php-soap \
    php73-php-mysqlnd \
    php73-php-xml \
    php73-php-mbstring \
    php73-php-cli \
    php73-php-opcache \
    php73-php-process \
    php73-php-pdo \
    php73-php-fpm \
    php73-php-ldap \
    php73-php-intl \
    php73-php-bcmath \
    php73-php-pecl-xdebug \
    viewvc MySQL-python python-ldap viewvc-theme-tuleap \
    httpd mod_dav_svn logrotate sha1collisiondetector \
    mod_perl perl-DBI perl-LDAP perl-DBD-MySQL 'perl(Crypt::Eksblowfish::Bcrypt)' 'perl(Redis)' \
    supervisor; \
    yum clean all && \
    rm -rf /var/cache/yum
