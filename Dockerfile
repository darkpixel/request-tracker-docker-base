FROM alpine:3.13.5
LABEL maintianer="Aaron C. de Bruyn <aaron@heyaaron.com>"

RUN apk update && apk add --no-cache \
  spawn-fcgi \
  w3m \
  perl-dev \
  perl-utils \
  glib \
  gettext \
  msmtp \
  dcron \
  tini \
  fetchmail \
  ca-certificates \
  ca-certificates-cacert \
  libc-dev \
  curl \
  gcc \
  g++ \
  make \
  msmtp \
  perl-term-readkey \
  perl-cache-simple-timedexpiry \
  perl-class-accessor \
  perl-dbi \
  db \
  libsasl \
  libldap \
  libpq \
  perl-dbd-pg \
  mariadb-common \
  mariadb-client \
  perl-json \
  perl-gd \
  perl-gdgraph \
  perl-dbd-mysql \
  perl-graphviz \
  perl-ldap \
  perl-ipc-run \
  perl-graphviz \
  perl-sub-exporter-progressive \
  perl-devel-globaldestruction \
  perl-devel-stacktrace \
  perl-digest-sha1 \
  perl-email-address \
  perl-getopt-long \
  perl-locale-maketext-fuzzy \
  perl-locale-maketext-lexicon \
  perl-module-runtime \
  perl-test-taint \
  perl-module-implementation \
  perl-params-validate \
  perl-exporter-tiny \
  perl-list-moreutils \
  perl-parallel-forkmanager \
  perl-dist-checkconflicts \
  perl-log-dispatch \
  perl-io-stringy \
  perl-timedate \
  perl-mailtools \
  perl-convert-binhex \
  perl-mime-tools \
  perl-net-cidr \
  perl-regexp-common \
  perl-regexp-common-net-cidr \
  perl-params-util \
  perl-sub-install \
  perl-data-optlist \
  perl-sub-exporter \
  perl-text-password-pronounceable \
  perl-text-template \
  perl-text-wrapper \
  perl-time-hires \
  perl-sub-uplevel \
  perl-test-exception \
  perl-tree-simple \
  perl-universal-require \
  expat

RUN apk add --no-cache \
  perl-xml-parser \
  perl-cpan-meta-check \
  perl-test-fatal \
  perl-test-requires \
  perl-test-warnings \
  perl-scalar-list-utils \
  perl-test-needs \
  perl-eval-closure \
  perl-mro-compat \
  perl-role-tiny \
  perl-specio \
  perl-test-simple \
  perl-importer \
  perl-term-table \
  perl-sub-info \
  perl-test2-suite \
  perl-test-without-module \
  perl-class-data-inheritable \
  perl-exception-class \
  perl-ipc-run3 \
  perl-test2-plugin-nowarnings \
  perl-params-validationcompiler \
  perl-class-inspector \
  perl-file-sharedir \
  perl-file-sharedir-install \
  perl-variable-magic \
  perl-b-hooks-endofscope \
  perl-package-stash-xs \
  perl-package-stash \
  perl-sub-name \
  perl-sub-identify \
  perl-namespace-clean \
  perl-namespace-autoclean \
  perl-datetime-locale \
  perl-class-singleton \
  perl-datetime-timezone \
  perl-datetime \
  perl-datetime-format-mail \
  perl-datetime-format-w3cdtf \
  perl-xml-rss \
  perl-text-wikiformat \
  perl-list-utilsby \
  perl-module-pluggable \
  perl-convert-color \
  perl-test-nowarnings \
  perl-test-warn \
  perl-class-accessor-chained \
  perl-text-vfile-asdata \
  perl-class-returnvalue \
  perl-test-longstring \
  perl-file-slurp \
  perl-data-ical \
  perl-mime-types \
  perl-html-tree \
  perl-font-afm \
  perl-html-rewriteattributes \
  perl-cgi \
  perl-error \
  perl-cache-cache \
  perl-log-any \
  perl-class-container \
  perl-html-mason \
  perl-javascript-minifier \
  perl-cgi-psgi \
  perl-cgi-emulate-psgi \
  perl-html-mason-psgihandler \
  perl-apache-session \
  perl-proc-wait3 \
  perl-scope-guard \
  perl-server-starter \
  perl-filesys-notify-simple \
  perl-stream-buffered \
  perl-devel-stacktrace-ashtml \
  perl-http-body \
  perl-test-sharedfork \
  perl-test-tcp \
  tzdata
RUN apk add --no-cache \
  perl-posix-strftime-compiler \
  perl-apache-logformat-compiler \
  perl-hash-multivalue \
  perl-plack \
  perl-ipc-signal \
  perl-signal-mask \
  perl-class-accessor-lite \
  perl-parallel-prefork \
  perl-starlet \
  perl-module-versions-report \
  perl-css-squish \
  perl-clone \
  perl-want \
  perl-dbix-dbschema \
  perl-dbix-searchbuilder \
  perl-regexp-ipv6 \
  perl-text-reform \
  perl-text-autoformat \
  perl-text-quoted \
  perl-html-scrubber \
  perl-html-quoted \
  perl-fcgi \
  perl-fcgi-procmanager \
  perl-params-classify \
  perl-class-mix \
  perl-crypt-eksblowfish \
  perl-boolean \
  perl-datetime-format-natural \
  perl-data-uuid \
  perl-data-guid \
  perl-html-formattext-withlinks \
  perl-html-formattext-withlinks-andtables \
  perl-role-basic \
  perl-module-refresh \
  perl-test-mocktime \
  perl-date-extract \
  perl-email-address-list \
  perl-yaml-syck \
  perl-date-manip \
  perl-symbol-global-name \
  perl-path-class \
  perl-crypt-ssleay \
  perl-mozilla-ca \
  libidn \
  perl-net-libidn \
  perl-net-ssleay \
  perl-io-socket-ssl \
  perl-lwp-protocol-https \
  perl-convert-asn1 \
  perl-crypt-x509 \
  perl-file-which \
  perl-string-shellquote \
  perl-data-page \
  perl-data-page-pageset \
  perl-set-intspan \
  perl-business-hours \
  perl-scope-upper \
  perl-css-minifier-xs \
  perl-net-ip \
  perl-javascript-minifier-xs \
  perl-dbix-searchbuilder \
  libpng \
  freetype \
  fontconfig \
  ttf-droid \
  perl-encode-hanextra \
  perl-time-parsedate

RUN PERL_MM_USE_DEFAULT=1 cpan install \
  Parallel::ForkManager \
  Plack::Handler::Starman \
  Business::Hours \
  Data::Page::Pageset \
  Email::Address \
  Encode \
  Encode::Detect::Detector \
  HTML::FormatText::WithLinks::AndTables \
  HTML::FormatExternal \
  HTML::Gumbo \
  Module::Path \
  MooseX::NonMoose \
  MooseX::Role::Parameterized \
  Path::Dispatcher \
  Text::WordDiff \
  Web::Machine \
  Set::Infinite \
  DateTime::Event::ICal \
  DateTime::Event::Recurrence \
  DateTime::Set \
  Mozilla::CA \
  Net::Domain::TLD \
  Parse::BooleanLogic \
  && rm -rf /root/.cpan
