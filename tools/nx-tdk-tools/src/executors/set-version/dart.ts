import { readFileSync, writeFileSync } from "node:fs";
import { join } from "node:path";
import type { ExecutorContext } from "@nx/devkit";
import { parse as yamlParse, stringify as yamlStringify } from "yaml";
import { DART_CLIENTS_PATH, TS_CLIENTS_PATH } from "./constants";
import type { SetVersionExecutorOptions } from "./types";

export function setVersionDart(
	options: SetVersionExecutorOptions,
	context: ExecutorContext,
) {
	const dartFolderName = options.packageName.replace(/-/gi, "_");
	const tsFolderName = options.packageName.replace(/_/gi, "-");
	const tsPackageJsonPath = join(
		context.root,
		TS_CLIENTS_PATH,
		tsFolderName,
		"package.json",
	);
	const dartPackagePath = join(context.root, DART_CLIENTS_PATH, dartFolderName);

	// Read version from JS package.json
	const packageJson = JSON.parse(readFileSync(tsPackageJsonPath, "utf-8"));
	const version = packageJson.version as string;

	const pubspecYamlFile = `${dartPackagePath}/pubspec.yaml`;

	const specFile = readFileSync(pubspecYamlFile, { encoding: "utf-8" });
	const spec = yamlParse(specFile);

	const newSpec = yamlStringify({ ...spec, ...{ version } });

	writeFileSync(pubspecYamlFile, newSpec, {
		encoding: "utf-8",
	});

	console.log(
		`Version updated to ${version} for Dart package ${options.packageName}`,
	);
	return { success: true };
}
