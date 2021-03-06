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

Puppet::Type.newtype(:scap_upload) do
  @doc = "Uploads SCAP files to the defined remote storage.

  Currently we only support remote foreman-proxy with OpenSCAP's plug-in.
  The FQDN of the foreman-proxy is supposed to be the same as the FQDN of
  Puppet master. Otherwise, it needs to be set by `foreman_proxy` property.

  An object of this type should be required by an xccdf_scan object.
  "

  newparam(:title, :namevar => true) do
    desc "Name of the uploader object."
  end

  newparam(:foreman_proxy) do
    desc "URI to the remote server. Example: (https://foreman-proxy-01.local.lan:8443).
    By default fqdn to foreman_proxy is the same as puppet master and the port is 8443."
  end
end
