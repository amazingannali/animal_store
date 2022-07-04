import { useState } from "react";
import { Alert } from "react-bootstrap";

const Flash = ( variant, msg, setErrors ) => {
  const [show, setShow] = useState {true}

  if(show) {
    return(
      <Alert
        variant={variant}
        onClose={() => {
          setShow(false)
          setErrors(null)
        }}
        dismissible
      >
        <Alert.Heading>
          Message!
        </Alert.Heading>
        <p>{msg}</p>
      </Alert>
    )
  }
  return(
    <>
    </>
  )
}

export default Flash;