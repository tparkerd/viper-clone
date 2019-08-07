Name:		rsa-pipeline-reconstruction3d
Version:	12.0.0
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline reconstruction 3D

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)


%description
System Root Architecture is a software suite for processing image sets. Reconstruction 3D C++ application.

%prep
%setup -q -n %{name}-%{version}

%build
# compile reconstruction3D
cd cpp/reconstruction3D
make
make install
#make clean

# back to the rsa-pipeline rmp directory
cd ../../
echo `pwd`

%install
# variable
localBin=local/bin
# reconstruction3D
reconstruction3D=${localBin}/reconstruction3D
mkdir -p  %{buildroot}/%{_usr}/${reconstruction3D}

# copy 
# reconstruction3D C++
cp %{_builddir}/%{name}-%{version}/cpp/reconstruction3D/bin/Reconstruction %{buildroot}/%{_usr}/${reconstruction3D}
# rsa license
cp %{_builddir}/%{name}-%{version}/cpp/reconstruction3D/rsa-pipeline-license.txt %{buildroot}/%{_usr}/${reconstruction3D}
# para.txt file - rotations(transformation matrix) used by the Reconstruction3D
cp %{_builddir}/%{name}-%{version}/cpp/reconstruction3D/para.txt %{buildroot}/%{_usr}/${reconstruction3D}

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rsa license
%attr(0644,root,root)  /usr/local/bin/reconstruction3D/rsa-pipeline-license.txt
# rotations(transformation matrix) used by the Reconstruction3D - need to have write access
%attr(0666,root,root) /usr/local/bin/reconstruction3D/para.txt

%changelog
* Mon Aug 5 2013 Vladimir Popov <vladimir.popov@duke.edu> - 12.0.0-1
- changed dependency: from rsa-pipeline-gia-gui = 3.0.18 to rsa-pipeline-gia-gui = 3.0.20
- added para.txt file deployment
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 11.0.0-1
- First build for EL 6
