Name:		rsa-pipeline-gia-gui
Version:	3.0.20
Release:	1%{?dist}.vp
Summary:	System Root Architecture Pipeline. Java rsa pipeline GUI application.

Group:		Development/Tools
License:	GPL
URL:		http://sites.duke.edu/benfey/
Source0:	%{name}-%{version}.tar.gz
BuildRoot:	%{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)


Requires: rsa-pipeline-admin = 2.0.0
Requires: rsa-pipeline-gia = 1.0.0
Requires: rsa-pipeline-reconstruction3d-matlab = 11.0.0
Requires: rsa-pipeline-isosurface-matlab = 1.0.0
Requires: rsa-pipeline-quality-control = 1.0.0
Requires: rsa-pipeline-skeleton3d = 2.0.3


%description
System Root Architecture is a software suite for processing image sets. Java rsa pipeline GUI application.

%prep
%setup -q -n %{name}-%{version}

%build
#Compile `RsaGia` and properly put the compiled files into the java/gia-gui/classes folder
cd java/gia-gui
mkdir classes

# construct -cp parameter for the javac - '*' does not work - need to list 'manually' all jars  between ":" them
# java -cp jar1:jar2:jar3:dir1:. HelloWorld
# need to loop over the lib and make the "jar1:jar2:jar3:
LIB=$(pwd)/lib
echo $LIB
# put all files in the LIB dir into an array files
files=($LIB/*)
buffer=''
for f in "${files[@]}"
do
  buffer=$buffer:$f
done

# set classpath
classpath=$buffer
# compile
find src/main -name "*.java" | xargs javac -cp $classpath -d classes

#Create the `rsa-gia.jar` file in the java/gia-gui/classes folder
cd classes
jar cvf rsa-gia.jar edu/duke/genome/rootarch/rsagia/app2/*.class edu/duke/genome/rootarch/rsagia/xml/*.class edu/duke/genome/rootarch/rsagia2/*.class 

# go to the resources folder
cd  ../src/main/resources
echo `pwd`

# Add resources to the `rsa-gia.jar` 
# NOTE: the two images in the resources are expected to be in the root of the jar 
# (they have been added from java code using like: lockTopButton.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dash-square.png")));
jar uf  ../../../classes/rsa-gia.jar dash-square.png top-square.png 

######################################################################################################
### does not work: Class Path is too long - threre is size restriction for the Class Path in Linux
###
### Solution: add the Class Path when running this program
###
######################################################################################################
##  Unzip the MANIFEST.MF file
#unzip ../../../classes/rsa-gia.jar	
## Add the Class-Path and Main-Class to the MANIFEST.MF file
#echo "Manifest-Version: 1.0" >  META-INF/MANIFEST.MF
#echo "Created-By: 1.7.0_11 (Oracle Corporation)" >>  META-INF/MANIFEST.MF
#echo "Main-Class: edu.duke.genome.rootarch.rsagia.app2.App" >> META-INF/MANIFEST.MF
#echo "Class-Path: $buffer" >>  META-INF/MANIFEST.MF
#jar umf META-INF/MANIFEST.MF ../../../classes/rsa-gia.jar
##end does not work: Class Path is too long##########################################################

# back to the rsa-pipeline rmp directory
cd ../../../../../
echo `pwd`

%install
# variable
localBin=local/bin
# Gia GUI
giaguiRelease=${localBin}/gia-java
mkdir -p  %{buildroot}/%{_usr}/${giaguiRelease}/lib

# copy 
# Gia GUI Java jar and default.properties
cp %{_builddir}/%{name}-%{version}/java/gia-gui/classes/rsa-gia.jar %{buildroot}/%{_usr}/${giaguiRelease}
cp %{_builddir}/%{name}-%{version}/java/gia-gui/default.properties %{buildroot}/%{_usr}/${giaguiRelease}
# libraries
cp  %{_builddir}/%{name}-%{version}/java/gia-gui/lib/* %{buildroot}/%{_usr}/${giaguiRelease}/lib
cp  %{_builddir}/%{name}-%{version}/java/gia-gui/lib-2/* %{buildroot}/%{_usr}/${giaguiRelease}/lib
# rsa license
cp %{_builddir}/%{name}-%{version}/java/gia-gui/rsa-pipeline-license.txt %{buildroot}/%{_usr}/${giaguiRelease}

%clean
#rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
%{_usr}/*
# rsa license
%attr(0644,root,root) /usr/local/bin/gia-java/rsa-pipeline-license.txt

%changelog
* Mon Aug 5 2013 Vladimir Popov <vladimir.popov@duke.edu> - 3.0.20-1
- changed dependency: from rsa-pipeline-admin = 1.0.0 to rsa-pipeline-admin = 2.0.0
- changed dependency: from rsa-pipeline-reconstruction3d-matlab = 10.0.0 to rsa-pipeline-reconstruction3d-matlab = 11.0.0
* Fri May 31 2013 Vladimir Popov <vladimir.popov@duke.edu> - 3.0.18-1
- First build for EL 6
