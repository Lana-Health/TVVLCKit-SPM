# TVVLCKit-SPM

SPM wrapper for TVVLCKit binary distribution.

This repository contains the TVVLCKit framework for tvOS, sourced from [VLCKit](https://code.videolan.org/videolan/VLCKit).

## Automated Updates

This repository includes a GitHub Actions workflow that automatically:
- Checks daily for new TVVLCKit releases from the VLCKit source
- Downloads and packages the new framework
- Creates a GitHub release with the framework binary
- Updates Package.swift with the new version and checksum
- Creates a pull request for review
- Sends notifications when updates are available

### Setup

To enable the automated workflow:

1. **Enable workflow permissions:**
   - Go to repository Settings → Actions → General
   - Under "Workflow permissions", select "Read and write permissions"
   - Check "Allow GitHub Actions to create and approve pull requests"

2. **Manual trigger:**
   - Go to Actions → "Update TVVLCKit Framework"
   - Click "Run workflow" to manually check for updates

### Customization

The VLCKit download URL may need adjustment based on their release structure. Check the workflow file at `.github/workflows/update-tvvlckit.yml` and update the `DOWNLOAD_URL` in the "Download and prepare new framework" step if needed.

## Usage

Add this package to your project's dependencies in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/Lana-Health/TVVLCKit-SPM.git", from: "3.6.0")
]
```

Then add it to your target:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "TVVLCKit", package: "TVVLCKit-SPM")
        ]
    )
]
```

## Current Version

- **TVVLCKit:** v3.6.0
- **Source:** [VLCKit](https://code.videolan.org/videolan/VLCKit)
- **Platform:** tvOS 13.0+

## License

This is a wrapper repository. Please refer to the [VLCKit repository](https://code.videolan.org/videolan/VLCKit) for licensing information about the VLC framework.
