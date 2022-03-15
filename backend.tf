terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        credentials = "/var/lib/jenkins/pjt-an3-dev-vm3-ca30ceac792d.json"
        bucket      = "hyewon-test-bucket2"
        prefix      = "jenkins.terraform.tfstate"
    }
}
