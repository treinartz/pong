class MyClass<E>{
    private E attribute;
    
    public MyClass(E var){
      this.attribute = var;
    }
    public E get(){
      return this.attribute;
    }
    public void set(E value){
      this.attribute = value;
    }
    public int hashCode() {
      return attribute.hashCode();
    }
    
    public boolean equals(Object other){
        
        if(other instanceof MyClass<?>) {
           if (this.get() == null) {
            // checks if both attributes are null
            return this.get() == ((MyClass<E>)other).get();
          } else {
        // checks if both attributes are equal
        return this.get().equals( ((MyClass<E>)other).get());
          }
        } else {
            return false;
        }        
    }
    
}
