import boto3
import sys

ec2 = boto3.client('ec2')

if __name__ == "__main__":
    accion = sys.argv[1]

    if accion == "listar":
        print(ec2.describe_instances())
    elif accion == "iniciar":
        ec2.start_instances(InstanceIds=[sys.argv[2]])
    elif accion == "detener":
        ec2.stop_instances(InstanceIds=[sys.argv[2]])
    elif accion == "terminar":
        ec2.terminate_instances(InstanceIds=[sys.argv[2]])
