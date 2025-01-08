import type { ExecutorContext } from "@nrwl/devkit";
import { setVersionDart } from "./dart";
import { setVersionJava } from "./java";
import { setVersionPython } from "./python";
import { Language, type SetVersionExecutorOptions } from "./types";

export default async function setVersionExecutor(
	options: SetVersionExecutorOptions,
	context: ExecutorContext,
): Promise<{ success: boolean }> {
	switch (options.language) {
		case Language.python: {
			return setVersionPython(options, context);
		}
		case Language.dart: {
			return setVersionDart(options, context);
		}
		case Language.java: {
			return setVersionJava(options, context);
		}
		default: {
			throw new Error(`Unknown ${options.language}`);
		}
	}
}
