terraform{
    required_providers{
        google = " ~> 3.5"
    }

# 버킷에 자동 연동
    backend "gcs"{
        credentials = "/var/lib/jenkins/pjt-an3-dev-vm3-ca30ceac792d.json"
        bucket      = "hyewon-test-bucket"
        prefix      = "jenkins.terraform.tfstate"
    }
}

