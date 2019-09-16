INSERT INTO saved_config (program_id,name,contents) VALUES 
(12,'CNT_corn_100-5-3500','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="628" />
        <property name="%width%" value="1710" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_skip" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/ZmBSS_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="averagerootwidthx2feature;bushinessfeature;ccomponentscountfeature;cleanedimage;croppedimage;depthfeature;ellipseaxesaspectratiofeature;grayimage;lengthdistrfeature;majorellipseaxesfeature;maximumnumberofrootsfeature;maxwidthfeature;mediannumberofrootsfeature;minorellipseaxesfeature;networkareafeature;networkconvexareafeature;perimeterfeature;solidityfeature;specificrootlengthfeature;surfaceareafeature;thinnedimage;thresholdedimage;totallengthfeature;volumefeature;widthdepthratiofeature" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="false" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="100" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="3500" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'rice_150-5-1000','<?xml version="1.0" ?>
<configuration>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="image_format" value="TIFF" />
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/bm93/tmp7/project/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="150" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="1000" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="150" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'rice*original*_150-5-50','<?xml version="1.0" ?>
<configuration>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="image_format" value="TIFF" />
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/bm93/tmp7/project/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="150" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="50" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="150" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'rice_150-5-250','<?xml version="1.0" ?>
<configuration>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="image_format" value="TIFF" />
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/bm93/tmp7/project/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="150" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="250" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="150" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'rice_150-5-800','<?xml version="1.0" ?>
<configuration>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="image_format" value="TIFF" />
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/bm93/tmp7/project/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="150" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="800" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="150" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'rice_150-5-150','<?xml version="1.0" ?>
<configuration>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="image_format" value="TIFF" />
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/bm93/tmp7/project/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="150" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="150" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="150" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'CNT_corn_100-5-2500','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="628" />
        <property name="%width%" value="1710" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_skip" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/ZmBSS_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="averagerootwidthx2feature;bushinessfeature;ccomponentscountfeature;cleanedimage;croppedimage;depthfeature;ellipseaxesaspectratiofeature;grayimage;lengthdistrfeature;majorellipseaxesfeature;maximumnumberofrootsfeature;maxwidthfeature;mediannumberofrootsfeature;minorellipseaxesfeature;networkareafeature;networkconvexareafeature;perimeterfeature;solidityfeature;specificrootlengthfeature;surfaceareafeature;thinnedimage;thresholdedimage;totallengthfeature;volumefeature;widthdepthratiofeature" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="false" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="100" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="2500" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'CNT_corn_100-5-1000','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="628" />
        <property name="%width%" value="1710" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_skip" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/ZmBSS_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="averagerootwidthx2feature;bushinessfeature;ccomponentscountfeature;cleanedimage;croppedimage;depthfeature;ellipseaxesaspectratiofeature;grayimage;lengthdistrfeature;majorellipseaxesfeature;maximumnumberofrootsfeature;maxwidthfeature;mediannumberofrootsfeature;minorellipseaxesfeature;networkareafeature;networkconvexareafeature;perimeterfeature;solidityfeature;specificrootlengthfeature;surfaceareafeature;thinnedimage;thresholdedimage;totallengthfeature;volumefeature;widthdepthratiofeature" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="false" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="100" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="1000" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'TCW_alf_100-1000-3','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="892" />
        <property name="%width%" value="1520" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_skip" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/tmp1_100311/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="false" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="100" />
        <property name="max_component_size_to_ignore" value="1000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="100" />
        <property name="drop_value" value="3" />
        <property name="max_component_size_to_ignore" value="1000" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="1000" />
        <property name="threshold" value="150" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'DA_100-5-500','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="2928" />
        <property name="%width%" value="1508" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/OsRIL_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="100" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="500" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
;
INSERT INTO saved_config (program_id,name,contents) VALUES 
(12,'rice_150-5-550','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="2928" />
        <property name="%width%" value="1508" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/OsRIL_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="150" />
        <property name="drop_value" value="5" />
        <property name="max_component_size_to_ignore" value="550" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'ERF_arabidopsis_65-1000-3','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="628" />
        <property name="%width%" value="1710" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_skip" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/ZmBSS_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="averagerootwidthx2feature;bushinessfeature;ccomponentscountfeature;cleanedimage;croppedimage;depthfeature;ellipseaxesaspectratiofeature;grayimage;lengthdistrfeature;majorellipseaxesfeature;maximumnumberofrootsfeature;maxwidthfeature;mediannumberofrootsfeature;minorellipseaxesfeature;networkareafeature;networkconvexareafeature;perimeterfeature;solidityfeature;specificrootlengthfeature;surfaceareafeature;thinnedimage;thresholdedimage;totallengthfeature;volumefeature;widthdepthratiofeature" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="false" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value=“65” />
        <property name="drop_value" value=“1000” />
        <property name="max_component_size_to_ignore" value="3" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'CNT_At_50-4-500','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="628" />
        <property name="%width%" value="1710" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_skip" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/ZmBSS_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="averagerootwidthx2feature;bushinessfeature;ccomponentscountfeature;cleanedimage;croppedimage;depthfeature;ellipseaxesaspectratiofeature;grayimage;lengthdistrfeature;majorellipseaxesfeature;maximumnumberofrootsfeature;maxwidthfeature;mediannumberofrootsfeature;minorellipseaxesfeature;networkareafeature;networkconvexareafeature;perimeterfeature;solidityfeature;specificrootlengthfeature;surfaceareafeature;thinnedimage;thresholdedimage;totallengthfeature;volumefeature;widthdepthratiofeature" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="false" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="50" />
        <property name="drop_value" value="4" />
        <property name="max_component_size_to_ignore" value="500" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(12,'CNT_At_50-3-500','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="628" />
        <property name="%width%" value="1710" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_skip" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/ZmBSS_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="averagerootwidthx2feature;bushinessfeature;ccomponentscountfeature;cleanedimage;croppedimage;depthfeature;ellipseaxesaspectratiofeature;grayimage;lengthdistrfeature;majorellipseaxesfeature;maximumnumberofrootsfeature;maxwidthfeature;mediannumberofrootsfeature;minorellipseaxesfeature;networkareafeature;networkconvexareafeature;perimeterfeature;solidityfeature;specificrootlengthfeature;surfaceareafeature;thinnedimage;thresholdedimage;totallengthfeature;volumefeature;widthdepthratiofeature" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="false" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="50" />
        <property name="drop_value" value="3" />
        <property name="max_component_size_to_ignore" value="500" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>
')
,(15,'scale_2.10','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.50','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.80','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_3.00','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.40','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.90','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
;
INSERT INTO saved_config (program_id,name,contents) VALUES 
(15,'scale_2.60','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.70','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.20','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.25','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(15,'scale_2.30','<?xml version="1.0"?>
<configuration>
   <property name="configname" value="scale_2.25"/>
   <property name="serialize_image_formatvalue" value="iv"/>
   <property name="scale" value="2.25"/>
</configuration>
')
,(12,'tomato_30-2-1000','<?xml version="1.0" ?>
<configuration>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="image_format" value="TIFF" />
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/bm93/tmp7/project/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="30" />
        <property name="drop_value" value="2" />
        <property name="max_component_size_to_ignore" value="1000" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="150" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>')
,(12,'tomato_30-2-1000_NJ','<?xml version="1.0" ?>
<configuration>
    <algorithm id="%metadata%">
        <property name="%height%" value="2928" />
        <property name="%width%" value="1508" />
    </algorithm>
    <algorithm id="algorithm_manager_defaults">
        <property name="averagerootwidthx2feature" value="features_skeleton_v2" />
        <property name="bushinessfeature" value="feature_roots_number" />
        <property name="ccomponentscountfeature" value="feature_components" />
        <property name="cleanedimage" value="cleaning_skip" />
        <property name="croppedimage" value="cropping_manual" />
        <property name="depthfeature" value="features_skeleton_v2" />
        <property name="ellipseaxesaspectratiofeature" value="feature_ellipse_axes" />
        <property name="grayimage" value="preparation_color_2_gray" />
        <property name="lengthdistrfeature" value="features_skeleton_v2" />
        <property name="majorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="maximumnumberofrootsfeature" value="feature_roots_number" />
        <property name="maxwidthfeature" value="features_skeleton_v2" />
        <property name="mediannumberofrootsfeature" value="feature_roots_number" />
        <property name="minorellipseaxesfeature" value="feature_ellipse_axes" />
        <property name="networkareafeature" value="feature_network_areas" />
        <property name="networkconvexareafeature" value="feature_network_areas" />
        <property name="o3rf_av_edge_length" value="olga_medial_axis" />
        <property name="o3rf_av_size_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_depth" value="olga_medial_axis" />
        <property name="o3rf_edge_num" value="olga_medial_axis" />
        <property name="o3rf_horeqdiameter" value="olga_medial_axis" />
        <property name="o3rf_length_distr" value="olga_medial_axis" />
        <property name="o3rf_number_bif_cl" value="olga_medial_axis" />
        <property name="o3rf_srl" value="olga_medial_axis" />
        <property name="o3rf_surfarea" value="olga_medial_axis" />
        <property name="o3rf_totallength" value="olga_medial_axis" />
        <property name="o3rf_volume" value="olga_medial_axis" />
        <property name="o3rf_w_d_ratio" value="olga_medial_axis" />
        <property name="perimeterfeature" value="feature_perimeter" />
        <property name="solidityfeature" value="feature_network_areas" />
        <property name="specificrootlengthfeature" value="features_skeleton_v2" />
        <property name="surfaceareafeature" value="features_skeleton_v2" />
        <property name="t3rf_bushiness" value="vertical_sweep_3d" />
        <property name="t3rf_convex_volume" value="vertical_sweep_3d" />
        <property name="t3rf_maxr" value="vertical_sweep_3d" />
        <property name="t3rf_medr" value="vertical_sweep_3d" />
        <property name="t3rf_solidity" value="vertical_sweep_3d" />
        <property name="t3rf_surfarea" value="vertical_sweep_3d" />
        <property name="t3rf_volume" value="vertical_sweep_3d" />
        <property name="thinnedimage" value="thinning_binary" />
        <property name="thresholdedimage" value="thresholding_double_adaptive" />
        <property name="totallengthfeature" value="features_skeleton_v2" />
        <property name="volumefeature" value="features_skeleton_v2" />
        <property name="widthdepthratiofeature" value="features_skeleton_v2" />
    </algorithm>
    <core>
        <property name="serialize_image_format" value="jpg" />
        <property name="serialize_to" value="/localhome/ct103/giaroots_gui_projects/gia_gui_110711/OsRIL_thresholding/" />
        <property name="thread_pool_size" value="2" />
    </core>
    <algorithm id="experimental_cleaning_agg">
        <property name="add_scalar" value="0" />
        <property name="dark_root" value="true" />
    </algorithm>
    <algorithm id="gui">
        <property name="targets" value="cleanedimage;croppedimage;grayimage;thinnedimage;thresholdedimage" />
    </algorithm>
    <algorithm id="preparation_color_2_gray">
        <property name="reverse" value="true" />
        <property name="simple" value="true" />
    </algorithm>
    <algorithm id="thresholding_adaptive">
        <property name="adaptive_method" value="CV_ADAPTIVE_THRESH_MEAN_C" />
        <property name="block_size" value="19" />
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="subtract_constant" value="-1.25" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="thresholding_double_adaptive">
        <property name="block_size" value="30" />
        <property name="drop_value" value="2" />
        <property name="max_component_size_to_ignore" value="1000" />
    </algorithm>
    <algorithm id="thresholding_global">
        <property name="max_component_size_to_ignore" value="4000" />
        <property name="threshold" value="50" />
        <property name="threshold_type" value="CV_THRESH_BINARY" />
    </algorithm>
    <algorithm id="transform_manual_cropping">
        <property name="cropping_height" value="0" />
        <property name="cropping_left" value="0" />
        <property name="cropping_top" value="0" />
        <property name="cropping_width" value="0" />
    </algorithm>
    <algorithm id="transform_rotation">
        <property name="flip" value="none" />
        <property name="rotate" value="0" />
    </algorithm>
    <algorithm id="transform_setscale">
        <property name="metric_scale" value="1" />
    </algorithm>
</configuration>')
;