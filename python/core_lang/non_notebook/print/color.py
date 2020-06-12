class ColoredLogger:
    RED = '\033[31m'
    GREEN = '\033[32m'
    YELLOW = '\033[33m'
    RESET = '\033[0m'

    def warn(self, msg):
        print(self.YELLOW + str(msg) + self.RESET, flush=True)

    def error(self, msg):
        print(self.RED + str(msg) + self.RESET, flush=True)

    def info(self, msg):
        print(self.GREEN + str(msg) + self.RESET, flush=True)

logger = ColoredLogger()
logger.warn("hi, yellow")
logger.error("hello, red")
logger.info("hola, green")

