from invoke import task


@task
def whoami(c):
    """
    Just a sample task to help testing the image
    """
    c.run('whoami')
