#
# Copyright (c) 2014 Red Hat Inc.
#
# This software is licensed to you under the GNU General Public License,
# version 2 (GPLv2). There is NO WARRANTY for this software, express or
# implied, including the implied warranties of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. You should have received a copy of GPLv2
# along with this software; if not, see
# http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
#

class openscap::package (
)
{
  include 'openscap::params'

  package {$openscap::params::packages:
    ensure => present,
  }

  if $content_package {
    package {$content_package:
      ensure => present,
    }
  }
}
