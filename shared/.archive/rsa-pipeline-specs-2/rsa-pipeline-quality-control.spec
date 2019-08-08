Name:		rsa-pipeline-quality-control
Version:	1.0.0
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline. Quality Control python component.

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)


%description
System Root Architecture is a software suite for processing image sets. Quality Control python component.

%prep
%setup -q -n %{name}-%{version}

# no build for this component (it's matlab code)
#%%build

%install
# variable
localBin=local/bin
# Quality Control
giaQc=${localBin}/gia-programs/quality-control
mkdir -p  %{buildroot}/%{_usr}/${giaQc}
mkdir -p  %{buildroot}/%{_usr}/${giaQc}/qc
mkdir -p  %{buildroot}/%{_usr}/${giaQc}/qc-3
mkdir -p  %{buildroot}/%{_usr}/${giaQc}/resources

# copy 
# Quality Control Python code and its resource
cp -r %{_builddir}/%{name}-%{version}/python/quality-control/* %{buildroot}/%{_usr}/${giaQc}

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rsa license
%attr(0644,root,root)   /usr/local/bin/gia-programs/quality-control/rsa-pipeline-license.txt

%changelog
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 1.0.0-1
- First build for EL 6
