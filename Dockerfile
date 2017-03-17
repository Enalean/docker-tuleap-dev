FROM centos:7

COPY Tuleap.repo /etc/yum.repos.d/

RUN yum install -y epel-release centos-release-scl vim && \
    yum install --enablerepo=TuleapC6 -y \
    nginx \
    rh-php56-php-gd \
    rh-php56-php-pecl \
    rh-php56-php-pear \
    rh-php56-php-soap \
    rh-php56-php-mysqlnd \
    rh-php56-php-xml \
    rh-php56-php-mbstring \
    rh-php56-php-cli \
    rh-php56-php-opcache \
    rh-php56-php-process \
    rh-php56-php-pdo \
    rh-php56-php-fpm \
    rh-php56-php-ldap \
    rh-php56-php-bcmath php-amqplib-amqplib \
    rh-php56-php-pecl-xdebug \
    php-ZendFramework2-Loader \
    php-paragonie-random-compat \
    viewvc MySQL-python python-ldap viewvc-theme-tuleap \
    httpd mod_dav_svn mod_perl perl-DBI perl-LDAP perl-DBD-MySQL \
    supervisor; \
    yum clean all
