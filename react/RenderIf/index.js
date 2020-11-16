import React from 'react'

const RenderIf = ({condition, fallbackComponent,children, ...props}) => {
    return (

        <>
        {
        condition ? children : fallbackComponent

        }
        </>
    )
}

export default RenderIf;
