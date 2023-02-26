import paramiko
import sys
import argparse

def login2Host(hostname: str, username: str, password: str) -> bool:
    try:
        client = paramiko.SSHClient()
        client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        client.connect(hostname, username=username, password=password)
        client.close()
        return True
    except paramiko.AuthenticationException:
        return False

