function Button({color,size,children}){
return(
<button class={`custom ${size}`}
            style={{background:color}}
            >
    {children}
</button>
);
}
export default Button;