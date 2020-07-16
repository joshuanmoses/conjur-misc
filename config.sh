DAP_ACCT="myorg"
DAP_USER="admin"
DAP_PASS="MyCyber@rk01"

K8S_FOLLOWER_NS="dap-namespace"
CONJUR_VERSION="11.4"

CONJUR_APPLIANCE_FILE="conjur-appliance_$CONJUR_VERSION.tar.gz"
CONJUR_APPLIANCE_IMG="registry.tld/conjur-appliance:$CONJUR_VERSION"

ECR_BASE_URI="440956151592.dkr.ecr.us-east-1.amazonaws.com"

SEED_FETCHER_REPO="$ECR_BASE_URI/seed-fetcher:$K8S_FOLLOWER_NS"
CONJUR_APPLIANCE_REPO="$ECR_BASE_URI/conjur-appliance:$CONJUR_VERSION"

DAP_INTERNAL_IP="172.31.35.124"  # IP for SSH access to DAP master
DAP_SSH_KEY=~/.ssh/DAPDemo.pem 
DAP_HOSTNAME="ec2-34-204-60-69.compute-1.amazonaws.com" # Public Hostname of DAP master [cluster]
DAP_AUTHN_K8S_BRANCH="eks-dev"

K8S_FOLLOWER_REPLICA_COUNT="2"
K8S_FOLLOWER_SVC_ACCT="conjur-cluster"
K8S_FOLLOWER_APP_LABEL="conjur-follower"
K8S_FOLLOWER_LOGIN="host/conjur/authn-k8s/$DAP_AUTHN_K8S_BRANCH/apps/$K8S_FOLLOWER_NS/service_account/$K8S_FOLLOWER_SVC_ACCT"

# If using EKS, eksctl can be used to build a Kubernetes cluster using the values below

EKS_CLUSTER_NAME="conjur-cluster"
EKS_CLUSTER_VERSION="1.16"
EKS_CLUSTER_NODE_GROUP_NAME="$EKS_CLUSTER_NAME-standard-workers"
EKS_CLUSTER_NODE_TYPE="m4.xlarge"
EKS_NODES=3
EKS_NODES_MIN=1
EKS_NODES_MAX=4
EKS_NODE_AMI="auto"

AWS_REGION="us-east-1"
