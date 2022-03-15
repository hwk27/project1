terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        credentials = "/var/lib/jenkins/pjt-an3-dev-vm3-gcs.json"
        bucket      = "hyewon-test-bucket"
        prefix      = "jenkins.terraform.tfstate"
    }
}
