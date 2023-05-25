module "api-gateway-courses" {
  source         = "./api-gateway"
  names           = ["courses", "course", "authors"]
  arns           = ["${module.save-course-lambda.arn}", "${module.update-course-lambda.arn}", "${module.get-course-lambda.arn}", "${module.delete-course-lambda.arn}", "${module.get-all-courses-lambda.arn}", "${module.get-all-authors-lambda.arn}"]
  function_names = ["${module.save-course-lambda.function_name}", "${module.update-course-lambda.function_name}", "${module.get-course-lambda.function_name}", "${module.delete-course-lambda.function_name}", "${module.get-all-courses-lambda.function_name}", "${module.get-all-authors-lambda.function_name}"]
  environment    = var.environment
}