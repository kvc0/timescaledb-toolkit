# Dependency configuration
# Ideally, all dependencies would be specified in just one place.
# Exceptions:
# - crate dependencies are specified in Cargo.toml files
# - postgres versions are duplicated in the Github Actions matrix
# - Readme.md lists some, too.  TODO is it acceptable to just point to this file?
# All our automation scripts read this, so at least we're not duplicating this
# information across all those.

PG_VERSIONS='12 13 14'

CARGO_EDIT=0.11.2

# Keep synchronized with extension/Cargo.toml and `cargo install --version N.N.N cargo-pgx` in Readme.md .
PGX_VERSION=0.5.4

RUST_TOOLCHAIN=1.60.0
RUST_PROFILE=minimal
RUST_COMPONENTS=clippy,rustfmt

# We use fpm 1.14.2 to build RPMs.
# TODO Use rpmbuild directly.
FPM_VERSION=1.14.2

GH_DEB_URL=https://cli.github.com/packages/pool/main/g/gh/gh_2.16.1_amd64.deb
GH_DEB_SHA256=d0ba8693b6e4c1bde6683ccfa971a15c00b9fe92865074d48609959d04399dc7