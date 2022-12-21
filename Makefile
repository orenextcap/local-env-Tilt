install-k3d:

pre-local-env:
		scripts/pre.sh

update-ecr-secret:
		scripts/createsecret.sh
run-tilt:
		scripts/run-tilt.sh