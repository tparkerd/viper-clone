Name:		rsa-pipeline-reconstruction3d-stl
Version:	4.0.0
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline reconstruction 3D (STL mesh generation)

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)


%description
System Root Architecture is a software suite for processing image sets. Reconstruction 3D C++ application for the STL mesh generation.

%prep
%setup -q -n %{name}-%{version}

%build
# compile reconstruction3D-stl
cd cpp/reconstruction3D-stl
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
reconstruction3D_stl=${localBin}/reconstruction3D-stl
mkdir -p  %{buildroot}/%{_usr}/${reconstruction3D_stl}

# copy 
# reconstruction3D-stl C++
cp %{_builddir}/%{name}-%{version}/cpp/reconstruction3D-stl/bin/recon-v4-stl %{buildroot}/%{_usr}/${reconstruction3D_stl}
# rsa license
cp %{_builddir}/%{name}-%{version}/cpp/reconstruction3D-stl/rsa-pipeline-license.txt %{buildroot}/%{_usr}/${reconstruction3D_stl}

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rsa license
%attr(0644,root,root)   /usr/local/bin/reconstruction3D-stl/rsa-pipeline-license.txt

%changelog
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 4.0.0-1
- First build for EL 6
