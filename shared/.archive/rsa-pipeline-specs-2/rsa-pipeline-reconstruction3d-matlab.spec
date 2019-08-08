Name:		rsa-pipeline-reconstruction3d-matlab
Version:	11.0.0
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline. Matlab component for Reconstruction 3D.

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

Requires: rsa-pipeline-reconstruction3d = 12.0.0
Requires: rsa-pipeline-reconstruction3d-stl = 4.0.0

%description
System Root Architecture is a software suite for processing image sets. Matlab component for Reconstruction 3D.

%prep
%setup -q -n %{name}-%{version}

# no build for this component (it's matlab code)
#%%build

%install
# variable
localBin=local/bin
# reconstruction3D and reconstruction3D-stl
reconRelease=${localBin}/matlab-programs/Reconstruction3D
mkdir -p  %{buildroot}/%{_usr}/${reconRelease}

# copy 
# reconstruction3D Matlab
cp -r %{_builddir}/%{name}-%{version}/matlab/reconstruction3D/* %{buildroot}/%{_usr}/${reconRelease}

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rotations(transformation matrix) used by the Reconstruction3D - need to have write access
%attr(0666,root,root) /usr/local/bin/matlab-programs/Reconstruction3D/para.txt
# start script
%attr(0755,root,root) /usr/local/bin/matlab-programs/Reconstruction3D/start
# rsa license
%attr(0644,root,root)  /usr/local/bin/matlab-programs/Reconstruction3D/rsa-pipeline-license.txt

%changelog
* Mon Aug 5 2013 Vladimir Popov <vladimir.popov@duke.edu> - 11.0.0-1
- changed dependency: from rsa-pipeline-reconstruction3d = 11.0.0 to rsa-pipeline-reconstruction3d = 12.0.0
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 10.0.0-1
- First build for EL 6
