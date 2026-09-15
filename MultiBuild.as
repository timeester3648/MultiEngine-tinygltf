void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	project.name("tinygltf");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eStaticLib);
	project.license("./LICENSE");
	properties.tags({ "use_header_only_mle", "utf8" });

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"."
	});

	properties.files({
		"./tiny_gltf.h",
		"./tiny_gltf_v3.h",
		"./tinygltf_json_c.h",
		"./tiny_gltf.cpp"
	});
}