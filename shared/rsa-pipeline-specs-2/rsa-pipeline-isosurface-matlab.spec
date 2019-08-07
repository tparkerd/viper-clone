Name:		rsa-pipeline-isosurface-matlab
Version:	1.0.0
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline. Matlab code for isosurface calculation.

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

%description
System Root Architecture is a software suite for processing image sets. Matlab code for isosurface calculation.

%prep
%setup -q -n %{name}-%{version}

# no build for this component (it's matlab code)
#%%build

%install
# variable
localBin=local/bin
# isosurface 
isoRelease=${localBin}/matlab-programs/Isosurface
mkdir -p  %{buildroot}/%{_usr}/${isoRelease}

# copy 
# isosurface Matlab
cp -r %{_builddir}/%{name}-%{version}/matlab/isosurface/* %{buildroot}/%{_usr}/${isoRelease}

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rsa license
%attr(0644,root,root)   /usr/local/bin/matlab-programs/Isosurface/rsa-pipeline-license.txt

%changelog
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 1.0.0-1
- First build for EL 6
