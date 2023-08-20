#### Aligning and Scaling the meshes ####
library(Morpho)
library(rgl)
library(Rvcg)

rotation_matrix=matrix(c(0.8065218,0.5911149,0.01028626,0,0.5583186,-0.7558216,0.34207344,0,0.1944301,-0.2816325,-0.93961692,0,0,0,0,1),ncol=4,byrow=TRUE)
#rotation_matrix=matrix(c(0.919328629970551,0.389629483222961,0.0549933537840843,0,0.390242397785187,-0.920712232589722,-0.000437354668974876,0,0.0504627674818039,0.0218627471476793,-0.998486816883087,0,0,0,0,1), ncol = 4, byrow = TRUE)


open3d()
rgl.bg(color = 'white')
mfrow3d(nr=5,nc = 11)
rgl.bg(color = 'white')
tarsius_files = list.files('C:/Users/wjyjy/Documents/TDA/Mandibular Molars/new_teeth_ect_aligned_by_species/Tarsius/',full.names = TRUE)
microcebus_files = list.files('C:/Users/wjyjy/Documents/TDA/Mandibular Molars/new_teeth_ect_aligned_by_species/Microcebus/',full.names = TRUE)
mirza_files = list.files('C:/Users/wjyjy/Documents/TDA/Mandibular Molars/new_teeth_ect_aligned_by_species/Mirza/',full.names = TRUE)
saimiri_files = list.files('C:/Users/wjyjy/Documents/TDA/Mandibular Molars/new_teeth_ect_aligned_by_species/Saimiri/',full.names = TRUE)



for (file_name in tarsius_files){
  file = vcgImport(file_name)
  plot3d(file, color = 'white', axes = FALSE, xlab = '',ylab = '',zlab='',specular = 'black')
  rgl.bg(color = 'yellow')
  rgl.viewpoint(userMatrix =rotation_matrix)
}
for (file_name in microcebus_files){
  file = vcgImport(file_name)
  plot3d(file, color = 'white', axes = FALSE, xlab = '',ylab = '',zlab='',specular = 'black')
  rgl.bg(color = 'lightblue')
  rgl.viewpoint(userMatrix =rotation_matrix)
}

for (file_name in mirza_files){
  file = vcgImport(file_name)
  plot3d(file, color = 'white', axes = FALSE, xlab = '',ylab = '',zlab='',specular = 'black')
  rgl.bg(color = 'lightgreen')
  rgl.viewpoint(userMatrix =rotation_matrix)
}
for (file_name in saimiri_files){
  file = vcgImport(file_name)
  plot3d(file, color = 'white', axes = FALSE, xlab = '',ylab = '',zlab='',specular = 'black')
  rgl.bg(color = 'grey')
  rgl.viewpoint(userMatrix =rotation_matrix)
}
