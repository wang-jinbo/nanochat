if [ -z "$WANDB_API_KEY" ]; then
    echo "WANDB_API_KEY is not set"
    exit 1
fi

wandb login

GRADPOWER=0.9  bash runs/speedrun.sh
GRADPOWER=0.95 bash runs/speedrun.sh
GRADPOWER=1.0 bash runs/speedrun.sh
GRADPOWER=1.05 bash runs/speedrun.sh
GRADPOWER=1.1 bash runs/speedrun.sh
