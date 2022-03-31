module github.com/pulumi/pulumi-hugo

go 1.16

require (
	github.com/pulumi/pulumi-hugo/themes/default v0.0.0-20211008162151-6e65a2068c3b // indirect
	github.com/pulumi/registry/themes/default v0.0.0-20220331202932-05461164e8cc // indirect
	github.com/pulumi/theme v0.0.0-20220331150312-f1a2ef437f64 // indirect
)

replace github.com/pulumi/pulumi-hugo/themes/default => ./themes/default
