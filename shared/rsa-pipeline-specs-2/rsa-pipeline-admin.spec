Name:		rsa-pipeline-admin
Version:	2.0.0
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline administrative scripts

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)


Requires: rsa-pipeline-gia-gui = 3.0.20


%description
System Root Architecture is a software suite for processing image sets. Administrative scripts.

%prep
%setup -q -n %{name}-%{version}

%build
# make bin folder
mkdir -p %{buildroot}/%{_usr}/bin
# variable
localBin=local/bin
# make reconstruction3D (and copy the start script there below)
reconRelease=${localBin}/matlab-programs/Reconstruction3D
mkdir -p  %{buildroot}/%{_usr}/${reconRelease}

# rsa matlab command
cp %{_builddir}/%{name}-%{version}/admin-script/matlab %{buildroot}/%{_usr}/bin/matlab
# Python scripts
cp %{_builddir}/%{name}-%{version}/admin-script/Python/* %{buildroot}/%{_usr}/${localBin}
# Shell scripts
cp %{_builddir}/%{name}-%{version}/admin-script/Shell/* %{buildroot}/%{_usr}/${localBin}
# rsa templates 
cp -r %{_builddir}/%{name}-%{version}/admin-script/rsa-gia-templates %{buildroot}/%{_usr}/${localBin}
# rsa license
cp %{_builddir}/%{name}-%{version}/admin-script/rsa-pipeline-license.txt %{buildroot}/%{_usr}/${localBin}
# rsa contributors
cp %{_builddir}/%{name}-%{version}/admin-script/rsa-pipeline-contributors.txt %{buildroot}/%{_usr}/${localBin}


##############################################
# except for start - handle it specially 
#############################################
rm %{buildroot}/%{_usr}/${localBin}/start
cp %{_builddir}/%{name}-%{version}/admin-script/Shell/start %{buildroot}/%{_usr}/${reconRelease}

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rsa license
%attr(0644,root,root) /usr/local/bin/rsa-pipeline-license.txt
# rsa contributors
%attr(0644,root,root) /usr/local/bin/rsa-pipeline-contributors.txt
# start script
%attr(0755,root,root) /usr/local/bin/matlab-programs/Reconstruction3D/start

%changelog
* Mon Aug 5 2013 Vladimir Popov <vladimir.popov@duke.edu> - 2.0.0-1
- changed dependency: from rsa-pipeline-gia-gui = 3.0.18 to rsa-pipeline-gia-gui = 3.0.20
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 1.0.0-1
- First build for EL 6
