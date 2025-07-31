# Snyk Security Expert Agent for Claude Code

An elite cybersecurity specialist agent that combines 25+ years of security expertise with Snyk's powerful security scanning capabilities. This agent provides comprehensive application security review, advanced threat modeling, and enterprise-grade vulnerability assessment with actionable remediation guidance.

## 🚀 Quick Start

### Prerequisites

You'll need Node as the following are installed via npm:

1. **Snyk CLI**: Install and authenticate with Snyk
   ```bash
   npm install -g snyk
   snyk auth #Authenticate with Snyk
   ```

2. **Snyk MCP Server**: Set up the Snyk MCP server via Snyk CLI

3. **Claude Code**: Install the latest version of Claude Code
   ```bash
   npm install -g @anthropic-ai/claude-code
   claude #Start Claude Code, and Authenticate
   ```

### Installation

1. **Clone this repository**:
   ```bash
   git clone https://github.com/markusweldon/snyk-subagent-for-claude-code.git
   cd snyk-subagent-for-claude-code
   ```

2. **Copy the subagent to your project** (choose one):
   
   **Option A: Project-level installation** (recommended for team sharing):
   ```bash
   # Copy to your project's .claude/agents directory
   mkdir -p /path/to/your/project/.claude/agents
   cp .claude/agents/snyk-security-expert.md /path/to/your/project/.claude/agents/
   ```
   
   **Option B: User-level installation** (available across all projects):
   ```bash
   # Copy to your user's Claude agents directory
   mkdir -p ~/.claude/agents
   cp .claude/agents/snyk-security-expert.md ~/.claude/agents/
   ```

3. **Set up Snyk MCP integration** (choose your preferred method):

   **Method 1: STDIO (Recommended)**:
   ```bash
   # First, start the Snyk MCP server
   snyk mcp -t stdio --experimental
   
   # Then add it to Claude Code
   # For npm global install:
   claude mcp add snyk ~/.nvm/versions/node/vX.X.X/bin/snyk -- mcp -t stdio --experimental
   
   # Or For system install:
   claude mcp add snyk /usr/local/bin/snyk -- mcp -t stdio --experimental
   ```

   **Method 2: SSE**:
   ```bash
   # First, start the Snyk MCP server
   snyk mcp -t sse --experimental
   
   # Then add it to Claude Code
   claude mcp add --transport sse snyk http://127.0.0.1:7695/sse
   ```

## 🔧 Configuration

### Snyk MCP Setup

The subagent leverages the Snyk MCP server to provide comprehensive security scanning. Ensure you have:

- ✅ Latest Snyk CLI installed
- ✅ Authenticated Snyk account (`snyk auth`)
- ✅ Snyk MCP server configured in Claude Code

### Verification

Test your setup by running:
```bash
# Verify Snyk CLI
snyk --version

# Verify authentication
snyk whoami

# Test MCP connection (in Claude Code)
claude mcp list
claude mcp test snyk
```

## 🎯 Usage

### Automatic Invocation

The Snyk security expert subagent automatically activates when you:
- Mention security-related tasks or comprehensive security analysis
- Request vulnerability scans or security audits
- Ask about dependency security, supply chain security, or SBOM analysis
- Need security code reviews, threat modeling, or architecture security assessment
- Prepare for production deployments requiring security validation
- Request compliance assessments (OWASP, NIST, SOC2, PCI DSS, etc.)

### Manual Invocation

Explicitly request the subagent:
```
> Use the snyk-security-expert subagent to perform comprehensive security analysis
> Have the Snyk security expert review my authentication implementation
> Ask the snyk-security-expert to conduct a full security audit before production deployment
> Use the security expert to analyze our API security and threat model
```

### Common Use Cases

#### 1. **Full Security Audit**
```
> Perform a comprehensive security audit of this application
```

#### 2. **Dependency Vulnerability Scan**
```
> Check all project dependencies for known vulnerabilities
```

#### 3. **Code Security Review**
```
> Scan the codebase for security vulnerabilities and provide remediation guidance
```

#### 4. **Container Security Assessment**
```
> Analyze Docker containers and images for security issues
```

#### 5. **Infrastructure as Code Security**
```
> Review Terraform/CloudFormation templates for security misconfigurations
```

## 🛡️ Features

### Elite Security Analysis Capabilities

- **Advanced Threat Modeling**: STRIDE, PASTA, LINDDUN, and OCTAVE methodologies for comprehensive attack surface analysis
- **Multi-Layer Security Assessment**: Code (SAST), dependencies (SCA), containers, infrastructure (IaC), and AI/ML components
- **Risk-Based Vulnerability Management**: CVSS 3.1 + EPSS scoring with business context and threat intelligence correlation
- **Supply Chain Security**: Deep dependency analysis, package authenticity verification, and SBOM generation
- **Architecture Security Review**: Trust boundary analysis, privilege escalation paths, and security pattern evaluation
- **Compliance & Governance**: OWASP ASVS, NIST CSF, ISO 27001, SOC 2, PCI DSS, FISMA, FedRAMP assessments
- **Enterprise Security Integration**: DevSecOps pipeline integration and automated security testing
- **Incident Response Planning**: Security monitoring recommendations and forensic analysis capabilities

### Comprehensive Security Coverage

| Security Domain | Capabilities | Snyk MCP Tools Used |
|-----------------|-------------|-------------------|
| **Application Security** | SAST scanning, secure coding practices, API security hardening, authentication/authorization review | `snyk_code_scan` |
| **Supply Chain Security** | SCA scanning, dependency analysis, license compliance, package authenticity verification | `snyk_sca_scan` |
| **Container Security** | Image vulnerability scanning, Dockerfile security, runtime security, Kubernetes security | `snyk_container_scan` |
| **Infrastructure Security** | IaC misconfigurations, cloud security posture, network security, serverless security | `snyk_iac_scan` |
| **AI/ML Security** | AI component inventory, model security, ML pipeline security assessment | `snyk_aibom` |
| **SBOM Analysis** | Software bill of materials security analysis, component vulnerability assessment | `snyk_sbom_scan` |
| **Enterprise Integration** | Multi-cloud environments, compliance frameworks, DevSecOps automation | All tools + advanced methodologies |

### Reporting and Communication

- **Priority-Based Results**: Critical issues highlighted first
- **Business Impact Assessment**: Risk explained in business terms
- **Actionable Recommendations**: Specific remediation steps
- **Educational Guidance**: Security concept explanations for developers

## 📊 Example Output

```
🔒 SECURITY ANALYSIS REPORT

📈 Security Score: 7.2/10 (Good)

🚨 CRITICAL ISSUES (2)
├── SQL Injection in user authentication (CVSS: 9.1)
│   ├── File: src/auth/login.js:42
│   ├── Fix: Use parameterized queries
│   └── Impact: Full database compromise possible
│
└── Hardcoded API key in configuration (CVSS: 8.4)
    ├── File: config/production.js:15
    ├── Fix: Move to environment variables
    └── Impact: Unauthorized API access

⚠️  HIGH ISSUES (5)
├── lodash@4.17.15 - Prototype Pollution (CVE-2020-8203)
│   ├── Affected: package.json dependency
│   ├── Fix: Upgrade to lodash@4.17.21
│   └── Exploitability: High

🔍 RECOMMENDATIONS
1. Immediate: Fix critical SQL injection vulnerability
2. Deploy: Update lodash dependency
3. Monitor: Set up Snyk monitoring for continuous scanning
4. Process: Integrate security scanning in CI/CD pipeline
```

## 🤝 Team Collaboration

### Sharing with Colleagues

1. **Via Git Repository**:
   ```bash
   # Team members can clone and install
   git clone [your-repo-url]
   # Follow installation steps
   ```

2. **Direct Distribution**:
   ```bash
   # Share just the subagent file
   cp .claude/agents/snyk-security-expert.md /path/to/colleague/project/.claude/agents/
   ```

3. **Organization-wide Deployment**:
   - Add to your organization's Claude Code configuration
   - Include in project templates
   - Document in team security guidelines

### Customization

Teams can customize the subagent by:
- Modifying the system prompt for specific security policies
- Adjusting tool permissions based on team needs
- Adding organization-specific security standards
- Integrating with internal security workflows

## 📚 Advanced Usage

### Integration with CI/CD

```yaml
# Example GitHub Actions workflow
name: Security Scan
on: [push, pull_request]
jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Security Scan with Claude Code
        run: |
          claude-code "Use snyk-security-expert subagent to perform comprehensive security audit and report findings"
```

### Custom Security Policies

Modify the subagent prompt to enforce your organization's security policies:

```markdown
## Custom Security Requirements
- All dependencies must be less than 6 months old
- No GPL licenses allowed in production dependencies  
- All container images must use approved base images
- Infrastructure must follow company security baseline
```

## 🔍 Troubleshooting

### Common Issues

**Issue**: Subagent not found
```
Solution: Ensure the snyk-security-expert.md file is in the correct .claude/agents directory
```

**Issue**: Snyk MCP connection failed
```
Solution: Verify Snyk CLI installation and authentication:
- snyk --version
- snyk auth
```

**Issue**: Limited scan results
```
Solution: Ensure proper Snyk CLI permissions and project access
```

### Debug Mode

Enable verbose logging for troubleshooting:
```bash
# Set debug environment variable
export SNYK_DEBUG=1
claude-code "Use snyk-security-expert subagent to perform comprehensive security analysis"
```

## 🤖 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Setup

1. Fork the repository
2. Create a feature branch
3. Test your changes
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Documentation**: [Claude Code Subagents Guide](https://docs.anthropic.com/en/docs/claude-code/subagents)
- **Issues**: [GitHub Issues](https://github.com/your-username/snyk-subagent-for-claude-code/issues)
- **Snyk Support**: [Snyk Documentation](https://docs.snyk.io)

## 🙏 Acknowledgments

- [Anthropic Claude Code](https://claude.ai/code) for the subagent framework
- [Snyk](https://snyk.io) for comprehensive security tooling
- The open source security community

---

**Security Note**: This subagent is designed for defensive security purposes only. It helps identify and fix vulnerabilities, not create them. Always follow responsible disclosure practices when discovering security issues.