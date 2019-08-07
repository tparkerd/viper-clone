Name:		rsa-pipeline-skeleton3d
Version:	2.0.3
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline skeleton 3D

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)


%description
System Root Architecture is a software suite for processing image sets. Skeleton 3D C++ application.

%prep
%setup -q -n %{name}-%{version}

%build
# compile the qhull-2012.1 library
cd cpp/skeleton3D/lib/qhull-2012.1
echo `pwd`
make
# back to the rsa-pipeline rmp directory
cd ../../../../
# compile skeleton3D
cd cpp/skeleton3D
make
make install
#make clean

# back to the rsa-pipeline rmp directory
cd ../../
echo `pwd`

%install
# variable
localBin=local/bin
# skeleton3D
skeleton3D=${localBin}/skeleton3D
mkdir -p  %{buildroot}/%{_usr}/${skeleton3D}

# copy 
# skeleton3D C++
cp %{_builddir}/%{name}-%{version}/cpp/skeleton3D/bin/Skeleton %{buildroot}/%{_usr}/${skeleton3D}
# rsa license
cp %{_builddir}/%{name}-%{version}/cpp/skeleton3D/rsa-pipeline-license.txt %{buildroot}/%{_usr}/${skeleton3D}

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rsa license
%attr(0644,root,root)   /usr/local/bin/skeleton3D/rsa-pipeline-license.txt

%changelog
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 2.0.3-1
- First build for EL 6
