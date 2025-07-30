# Contributing to Snyk Security Subagent

Thank you for your interest in contributing! This document provides guidelines for contributing to the Snyk Security Subagent for Claude Code.

## 🤝 How to Contribute

### Reporting Issues

1. **Security Issues**: Please report security vulnerabilities privately to [security@yourorg.com]
2. **Bug Reports**: Use GitHub Issues with the bug report template
3. **Feature Requests**: Use GitHub Issues with the feature request template

### Development Process

1. **Fork** the repository
2. **Create** a feature branch from `main`
3. **Make** your changes
4. **Test** your changes thoroughly
5. **Submit** a pull request

### Code Style

- Follow existing code formatting
- Use clear, descriptive commit messages
- Add comments for complex logic
- Update documentation for new features

## 🧪 Testing

### Testing Your Subagent Changes

1. **Copy your modified subagent** to a test project:
   ```bash
   cp .claude/agents/snyk-security.md /path/to/test-project/.claude/agents/
   ```

2. **Test basic functionality**:
   ```
   > Use the snyk-security subagent to scan this project
   ```

3. **Test specific scenarios**:
   - Dependency vulnerability scanning
   - Code security analysis  
   - Container security assessment
   - Infrastructure as Code review

### Test Cases to Verify

- [ ] Subagent activates automatically for security tasks
- [ ] Manual invocation works correctly
- [ ] Snyk MCP tools are accessible
- [ ] Error handling works properly
- [ ] Output format is clear and actionable

## 📝 Documentation Updates

When making changes, please update:
- README.md for user-facing changes
- Subagent prompt for capability changes
- Examples for new use cases
- This CONTRIBUTING.md for process changes

## 🔄 Pull Request Process

1. **Ensure** your PR addresses a specific issue or adds clear value
2. **Update** relevant documentation
3. **Test** your changes in a real project environment
4. **Write** a clear PR description explaining your changes
5. **Be responsive** to review feedback

### PR Checklist

- [ ] Code follows project conventions
- [ ] Documentation is updated
- [ ] Changes have been tested
- [ ] Commit messages are descriptive
- [ ] No sensitive information is included

## 🏗️ Development Setup

1. **Clone** the repository:
   ```bash
   git clone https://github.com/your-username/snyk-subagent-for-claude-code.git
   cd snyk-subagent-for-claude-code
   ```

2. **Set up** development environment:
   ```bash
   # Ensure you have Claude Code and Snyk CLI installed
   snyk --version
   claude --version
   ```

3. **Test** your development setup:
   ```bash
   # Copy subagent to test location
   mkdir -p ~/.claude/agents
   cp .claude/agents/snyk-security.md ~/.claude/agents/
   ```

## 🎯 Areas for Contribution

### High Priority
- Enhanced error handling and user feedback
- Additional security scanning integrations
- Improved remediation guidance
- Performance optimizations

### Medium Priority  
- More example configurations
- Integration with CI/CD platforms
- Custom security policy templates
- Advanced reporting features

### Low Priority
- UI/UX improvements for output formatting
- Additional language support
- Extended documentation
- Community examples

## 📋 Issue Labels

- `bug`: Something isn't working
- `enhancement`: New feature or request  
- `documentation`: Improvements to docs
- `good first issue`: Good for newcomers
- `help wanted`: Extra attention needed
- `security`: Security-related issue

## 🤔 Questions?

- **General Questions**: Open a GitHub Discussion
- **Bug Reports**: Create a GitHub Issue
- **Security Concerns**: Email security@yourorg.com
- **Feature Ideas**: Open a GitHub Issue with feature request template

## 📜 Code of Conduct

This project follows the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/). By participating, you agree to uphold this code.

## 🙏 Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes for significant contributions
- GitHub contributors page

Thank you for helping make security tooling more accessible and effective! 🚀