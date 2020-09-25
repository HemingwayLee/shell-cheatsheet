import argparse

def check_positive(value):
    ivalue = int(value)
    if ivalue <= 0:
        raise argparse.ArgumentTypeError(f"{value} should be a positive value")

    return ivalue

def main():
    parser = argparse.ArgumentParser(description='Description of your program')
    parser.add_argument('-m','--mode', help='Please put your mode', required=True)
    parser.add_argument('--val', choices=['a','b','c'], help='Special testing value')
    parser.add_argument('--age', type=check_positive)

    args = vars(parser.parse_args())
    print(args)

if __name__ == "__main__":
    main()


