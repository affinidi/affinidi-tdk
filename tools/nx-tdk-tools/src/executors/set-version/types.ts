export enum Language {
	python = "python",
	dart = "dart",
	java = "java",
}

export interface SetVersionExecutorOptions {
	packageName: string;
	language: Language;
}
