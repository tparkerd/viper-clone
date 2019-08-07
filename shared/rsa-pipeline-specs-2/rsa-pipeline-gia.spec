##########################################################################################################
## Only binary component available
## No compilation done (C++ sorce code is not open), when building the RPM.
##########################################################################################################
Name:		rsa-pipeline-gia
Version:	1.0.0
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline. GiA Roots C++ component.

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

%description
System Root Architecture is a software suite for processing image sets. GiA Roots C++ component.

%prep
%setup -q -n %{name}-%{version}

# no source code is available
#%%build

%install
# variable
localBin=local/bin
mkdir -p  %{buildroot}/%{_usr}/${localBin}

# copy 
# gia C++
cp -r %{_builddir}/%{name}-%{version}/cpp/gia %{buildroot}/%{_usr}/${localBin}

%clean
rm -rf %{buildroot}

%files
%{_usr}/*
%defattr(-,root,root,-)

%changelog
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 1.0.0-1
- First build for EL 6
