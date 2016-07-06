# golang-glide
A Docker image that builds and runs Go projects that use [Glide](https://glide.sh) for vendoring.

# Versioning
Most of the updates to this image will most likely be bumps to the Go base image version. 
As such the following versioning scheme will be used:  

```
<Image Semver>-<Golang ver>
```

The `<Image Semver>` will be changed when specific changes are made to the Dockerfile.  
The `<Golang ver>` will be changed to match the latest Go version.

# Release checklist
1. Tag `latest`
2. Tag specific version
3. Push

# Changelog
- `1.0.0-1.6` - Initial release
