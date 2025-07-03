# Publishing Setup for Hello World Package

## Automated Publishing with GitHub Actions

This package includes automated publishing to pub.dev when code is pushed to the `main` branch.

## Required Setup Steps

### 1. Get pub.dev Credentials

First, you need to authenticate with pub.dev:

```bash
# Run this command locally to get your credentials
dart pub token add https://pub.dev
```

This will open a browser and ask you to authenticate with Google. After authentication, it will save credentials to `~/.pub-cache/credentials.json`.

### 2. Add GitHub Secret

1. Go to your GitHub repository
2. Navigate to **Settings** → **Secrets and variables** → **Actions**
3. Click **New repository secret**
4. Name: `PUB_DEV_CREDENTIALS`
5. Value: Copy the contents of `~/.pub-cache/credentials.json`

### 3. Update Package Version

Before publishing, increment the version in `pubspec.yaml`:

```yaml
version: 1.0.1  # Increment this for each release
```

### 4. Trigger Publishing

The package will automatically publish when:
- Code is pushed to the `main` branch
- All tests pass
- The version in `pubspec.yaml` is different from the published version

## Manual Publishing

You can also publish manually:

```bash
# Check if package is ready
dart pub publish --dry-run

# Publish to pub.dev
dart pub publish
```

## CI Workflow Features

- ✅ **Quality Checks**: Formatting, analysis, tests
- ✅ **Pub.dev Compatibility**: Validates package before publishing
- ✅ **Automated Publishing**: Only on main branch pushes
- ✅ **Dependency Management**: Tests run before publishing

## Troubleshooting

### Common Issues:

1. **Version Conflict**: Increment version in `pubspec.yaml`
2. **Missing Credentials**: Add `PUB_DEV_CREDENTIALS` secret
3. **Tests Failing**: Fix tests before publishing
4. **Formatting Issues**: Run `dart format .`

### Checking Publish Status:

```bash
# View package on pub.dev
https://pub.dev/packages/helloworld

# Check package score
dart pub deps
```

## Package Information

- **Name**: `helloworld`
- **Description**: A simple Hello World Flutter package
- **Homepage**: https://github.com/kasinadhsarma1/helloworld
- **Repository**: https://github.com/kasinadhsarma1/helloworld
- **Issues**: https://github.com/kasinadhsarma1/helloworld/issues
