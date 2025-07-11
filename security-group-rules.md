## Web Server Security Group Rules

### Initial Configuration
- No inbound rules (most secure)

### Modified Configuration
| Type    | Protocol | Port Range | Source      | Description          |
|---------|----------|------------|-------------|----------------------|
| HTTP    | TCP      | 80         | 0.0.0.0/0   | Allow web traffic    |

### Security Best Practices
- Only opened port 80 (HTTP) to the public internet
- Kept SSH (port 22) closed since no remote access was needed
- Used 0.0.0.0/0 cautiously (in production, restrict to specific IPs)
