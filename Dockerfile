FROM centos:7

COPY remi-safe.repo /etc/yum.repos.d/
COPY RPM-GPG-KEY-remi /etc/pki/rpm-gpg/
COPY Tuleap.repo /etc/yum.repos.d/

RUN yum install -y epel-release centos-release-scl vim && \
    yum install --enablerepo=TuleapC7 -y \
    nginx \
    php73-php-gd \
    php73-php-soap \
    php73-php-mysqlnd \
    php73-php-xml \
    php73-php-mbstring \
    php73-php-opcache \
    php73-php-fpm \
    php73-php-cli \
    php73-php-pdo \
    php73-php-xml \
    php73-php-mbstring \
    php73-php-process \
    php73-php-ldap \
    php73-php-sodium \
    php73-php-pecl-zip \
    php73-php-pecl-redis5 \
    php73-php-pecl-mailparse \
    php74-php-gd \
    php74-php-soap \
    php74-php-mysqlnd \
    php74-php-xml \
    php74-php-mbstring \
    php74-php-opcache \
    php74-php-fpm \
    php74-php-cli \
    php74-php-pdo \
    php74-php-xml \
    php74-php-mbstring \
    php74-php-process \
    php74-php-ldap \
    php74-php-sodium \
    php74-php-pecl-zip \
    php74-php-pecl-redis5 \
    php74-php-pecl-mailparse \
    viewvc MySQL-python python-ldap viewvc-theme-tuleap \
    httpd mod_dav_svn logrotate sha1collisiondetector \
    mod_perl perl-DBI perl-LDAP perl-DBD-MySQL 'perl(Crypt::Eksblowfish::Bcrypt)' 'perl(Redis)' \
    supervisor; \
    yum clean all && \
    rm -rf /var/cache/yum
