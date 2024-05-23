#include "s21_map.h"

template <class Key, class T>
typename s21::map<Key, T>::iterator s21::map<Key, T>::begin() {
  return get_min_pair(root);
}

template <class Key, class T>
typename s21::map<Key, T>::iterator s21::map<Key, T>::end() {
  auto it = get_max_pair(root);
  ++it;
  return it;
}

template <class Key, class T>
inline typename s21::map<Key, T>::const_iterator s21::map<Key, T>::cbegin()
    const {
  return get_min_pair_const(root);
}

template <class Key, class T>
inline typename s21::map<Key, T>::const_iterator s21::map<Key, T>::cend()
    const {
  auto it = get_max_pair_const(root);
  ++it;
  return it;
}

template <class Key, class T>
typename s21::map<Key, T>::Node* s21::map<Key, T>::MapIterator::get_next_node(
    Node* it) {
  if (it->right != nullptr) return get_min_it(it->right);
  auto it_1 = it->parrent;
  while (it_1 != nullptr && it == it_1->right) {
    it = it_1;
    it_1 = it_1->parrent;
  }
  return it_1;
}

template <class Key, class T>
typename s21::map<Key, T>::Node* s21::map<Key, T>::MapIterator::get_min_it(
    Node* node) {
  while (node->left != nullptr) node = node->left;
  return node;
}

template <class Key, class T>
typename s21::map<Key, T>::Node*
s21::map<Key, T>::MapConstIterator::get_next_node_const(Node* it) const {
  if (it->right != nullptr) return get_min_it_const(it->right);
  auto it_1 = it->parrent;
  while (it_1 != nullptr && it == it_1->right) {
    it = it_1;
    it_1 = it_1->parrent;
  }
  return it_1;
}

template<class Key, class T>
typename s21::map<Key, T>::Node * s21::map<Key, T>::MapConstIterator::get_prev_it_const(Node * it) const
{
    if (it->left != nullptr) return get_max_it_const(it->left);
    auto it_1 = it->parrent;
    while (it_1 != nullptr && it == it_1->left) {
        it = it_1;
        it_1 = it_1->parrent;
    }
    return it_1;
}

template <class Key, class T>
typename s21::map<Key, T>::Node*
s21::map<Key, T>::MapConstIterator::get_min_it_const(Node* node) const {
  while (node->left != nullptr) node = node->left;
  return node;
}

template<class Key, class T>
typename s21::map<Key, T>::Node * s21::map<Key, T>::MapConstIterator::get_max_it_const(Node * node) const
{
    while (node->right != nullptr) node = node->right;
    return node;
}

template <class Key, class T>
s21::map<Key, T>::MapConstIterator::MapConstIterator(Node* node) {
  const_it_node = node;
}

template <class Key, class T>
s21::map<Key, T>::MapIterator::MapIterator(Node* node) {
  this->it_node = node;
}

template <class Key, class T>
inline typename s21::map<Key, T>::MapIterator&
s21::map<Key, T>::MapIterator::operator++() {
  it_node = get_next_node(it_node);
  return *this;
}

template <class Key, class T>
inline typename s21::map<Key, T>::MapIterator&
s21::map<Key, T>::MapIterator::operator--() {
  this->it_node = get_prev_node(it_node);
  return *this;
}

template <class Key, class T>
bool s21::map<Key, T>::MapIterator::operator==(const MapIterator& other) {
  return it_node == other.it_node;
}

template <class Key, class T>
bool s21::map<Key, T>::MapIterator::operator!=(const MapIterator& other) {
  return it_node != other.it_node;
}

template<class Key, class T>
std::pair<const Key,T&>& s21::map<Key, T>::MapIterator::operator*()
{
  return *this->operator->();
}

template <class Key, class T>
typename std::pair<const Key, T&>* s21::map<Key, T>::MapIterator::operator->() {
  std::pair<const Key, T&> b(it_node->first, (it_node->second));
  auto iter = &b;
  return iter;
}

template <class Key, class T>
inline typename s21::map<Key, T>::MapConstIterator&
s21::map<Key, T>::MapConstIterator::operator++() {
  const_it_node = get_next_node_const(const_it_node);
  return *this;
}

template<class Key, class T>
inline typename s21::map<Key, T>::MapConstIterator& s21::map<Key, T>::MapConstIterator::operator--() const
{
    const_it_node = get_prev_it_const(const_it_node);
    return *this;
}

template<class Key, class T>
bool s21::map<Key, T>::MapConstIterator::operator==(const MapConstIterator & other)
{
    return const_it_node == other.const_it_node;
}

template <class Key, class T>
bool s21::map<Key, T>::MapConstIterator::operator!=(
    const MapConstIterator& other) {
  return const_it_node != other.const_it_node;
}

template <typename key_type, typename mapped_type>
s21::map<key_type, mapped_type>::map() {
  size_map = 0;
  root = nullptr;
}

template <typename key_type, typename mapped_type>
s21::map<key_type, mapped_type>::map(
    std::initializer_list<value_type> const& items) {
  size_map = 0;
  root = nullptr;
  for (auto it = items.begin(); it != items.end(); ++it) insert(*it);
}

template <typename key_type, typename mapped_type>
s21::map<key_type, mapped_type>::map(const map& m) {
  size_map = 0;
  root = nullptr;
  for (auto it = m.cbegin(); it != m.cend(); ++it) this->insert(it);
}

template <typename key_type, typename mapped_type>
s21::map<key_type, mapped_type>::map(map&& m)
    : root(m.root), size_map(m.size_map) {
  m.root = nullptr;
  m.size_map = 0;
}

template <typename key_type, typename mapped_type>
s21::map<key_type, mapped_type>::~map() {
  clear();
}

template <class Key, class T>
s21::map<Key, T>& s21::map<Key, T>::operator=(s21::map<Key, T>&& m) {
  root = m.root;
  size_map = m.size_map;
  m.root = nullptr;
  m.size_map = 0;
  return *this;
}

template <class Key, class T>
inline T& s21::map<Key, T>::at(const Key& key) {
  auto it = find(root, key);
  if (it == nullptr) throw std::out_of_range("key not found");
  return it->second;
}

template<class Key, class T>
typename s21::map<Key, T>::iterator s21::map<Key, T>::find(const Key & key)
{
  Node* node = root;
  while(node != nullptr)
  {
    if(node->first == key)
      return MapIterator(node);
    if(key > node->first)
      node = node->right;
    else node = node->left;
  }
  return nullptr;
}

template <class Key, class T>
inline s21::map<Key, T>::Node::Node(Key key, T mapped) {
  this->first = key;
  this->second = mapped;
  this->left = nullptr;
  this->right = nullptr;
  is_red = false;
}

template <class Key, class T>
inline s21::map<Key, T>::Node::Node(Key key, T mapped, bool is_red) {
  this->first = key;
  this->second = mapped;
  this->left = nullptr;
  this->right = nullptr;
  this->is_red = is_red;
}

template <class Key, class T>
s21::map<Key, T>::Node::Node(key_type key) {
  this->first = key;
  this->left = nullptr;
  this->right = nullptr;
  is_red = false;
}

template <class Key, class T>
s21::map<Key, T>::Node::Node(key_type key, bool is_red) {
  this->first = key;
  this->left = nullptr;
  this->right = nullptr;
  this->is_red = is_red;
}

template <class Key, class T>
T& s21::map<Key, T>::operator[](const Key& key) {
  {
    iterator it = find(root, key);
    if (it == nullptr) {
      insert(root, key);
      return this->operator[](key);
    }
    return it->second;
  }
}

template <class Key, class T>
typename s21::map<Key, T>::size_type s21::map<Key, T>::size() {
  return size_map;
}

template <class Key, class T>
typename s21::map<Key, T>::size_type s21::map<Key, T>::max_size() {
  return 461168601842738790 / 2;
}

template <class Key, class T>
bool s21::map<Key, T>::empty() {
  return size_map == 0;
}

template <class Key, class T>
std::pair<typename s21::map<Key, T>::iterator, bool> s21::map<Key, T>::insert(
    const Key& key, const T& obj) {
  return insert(std::pair<key_type, mapped_type>(key, obj));
}

template <class Key, class T>
void s21::map<Key, T>::swap(map& other) {
  s21::map<Key, T> temp(other);
  other.clear();
  other.merge(*this);
  this->clear();
  this->merge(temp);
}

template <class Key, class T>
void s21::map<Key, T>::erase(iterator pos) {
  delete_node_2(root, pos->first);
}

template<class Key, class T>
void s21::map<Key, T>::erase(Key key)
{
    auto it = this->find(key);
    delete_node_2(it);
}

template <class Key, class T>
typename s21::map<Key, T>::Node* s21::map<Key, T>::delete_node(Node* node,
                                                               Key key) {
  if (node == nullptr)
    return nullptr;
  else if (node->parrent == nullptr) {
    Node* buf = get_max_pair(node->left).it;
    node->first = buf->first;
    node->second = buf->second;
    delete_node(buf, buf->first);
  } else if (key < node->first)
    delete_node(node->left, key);
  else if (key > node->first)
    delete_node(node->right, key);
  else {
    if (node->left == nullptr && node->right == nullptr) {
      Node* buf = node->parrent;
      buf->left == node ? buf->left = nullptr : buf->right = nullptr;
      --size_map;
      delete node;
    } else if (node->left == nullptr || node->right == nullptr) {
      Node* buf = node->parrent;
      --size_map;
      buf->left == node
          ? buf->left = (node->left == nullptr ? node->right : node->left)
          : buf->right = (node->left == nullptr ? node->right : node->left);
      delete node;
    } else {
      Node* buf = get_min_pair(node->right).it_node;
      node->first = buf->first;
      node->second = buf->second;
      delete_node(buf, buf->first);
    }
  }
  return node;
}


template<class Key, class T>
void s21::map<Key, T>::delete_node_2(iterator it)
{

    Node* node = it.it_node;
    if(node == nullptr)
      throw std::out_of_range("nullptr canot be erase");
    // if(node == nullptr) return;
    // while(node->first != key)
    // {
    //     if(key > node->first)
    //         node = node->right;
    //     else if(key < node->first)
    //         node = node->left;
    //     if(node == nullptr) return;
    // }
    if(node->left == nullptr && node->right == nullptr)
    {
        if(node == root)
            delete root;
        else
        {
            if(!node->is_red)
              delete_black_node_without_childs(node);
            if(node->parrent->left == node)
              node->parrent->left = nullptr;
            else
              node->parrent->right = nullptr;
            //print_map();
            //node->first < node->parrent->first ? node->parrent->left = nullptr : node->parrent->right = nullptr;
            delete node;
        }
        return;
    } 
    // bool is_red_node = node->is_red;
    Node* buf = nullptr;
    Node* balance_node = nullptr;
    if(node->left == nullptr || node->right == nullptr)
    {
        if(node->left != nullptr)
        {
            node->parrent->left == node ? node->parrent->left = node->left : node->parrent->right = node->left;
            node->parrent->left == node->left ? node->left->parrent = node->parrent : node->right->parrent = node->parrent;
            balance_node = node->left;
        }
        else
        {
            node->parrent->left == node ? node->parrent->left = node->right : node->parrent->right = node->right;
            node->parrent->left == node->right ? node->left->parrent = node->parrent : node->right->parrent = node->parrent;
            balance_node = node->right;
        }
        delete node;
    }
    else // 2 childs
    {
      
        buf = get_min_pair(node->right).it_node;
        swap_nodes(buf, node);
        node->right = buf->right;
        if(buf->right != nullptr)
          buf->right->parrent = node;
        std::cout << buf->first << " " << buf->parrent->first << "\n";
        delete_node_2(MapIterator(buf));
    }
    
    // if(!is_red_node)
    //   balance_after_delete(balance_node);
}

template<class Key, class T>
int s21::map<Key, T>::child_count(Node * node)
{
    if(node->left == nullptr && node->right == nullptr)
        return 0;
    else if(node->left != nullptr && node->right != nullptr)
        return 2;
    //else if(node->left)
}

template <typename key_type, typename mapped_type>
void s21::map<key_type, mapped_type>::clear() {
  clear(root);
  size_map = 0;
}

template <typename key_type, typename mapped_type>
void s21::map<key_type, mapped_type>::print_map() {
  print_map(root, 0, 0);
}

template <typename key_type, typename mapped_type>
void s21::map<key_type, mapped_type>::print_map(Node* node, int x, int y) {
  if (node == nullptr) return;
  print_map(node->left, x - 1, y + 1);
  std::cout << "num: " << node->first << "\tval: " << node->second << "\tcolor: " << node->is_red << "\tx: " << x << "\ty: "<< y << '\n';
  print_map(node->right, x + 1, y + 1);
}

template <typename key_type, typename mapped_type>
void s21::map<key_type, mapped_type>::insert(Node* node, key_type key,
                                             mapped_type mapped, Node* it) {
  if (size_map == 0) {
    root = new Node(key, mapped);
    root->parrent = nullptr;
    ++size_map;
    it = root;
  } else if (key > node->first) {
    if (node->right == nullptr) {
      node->right = (new Node(key, mapped, true));
      ++size_map;
      it = node->right;
      it->parrent = node;
      balance_map(node->right);
    } else {
      insert(node->right, key, mapped, it);
    }
  } else if (key < node->first) {
    if (node->left == nullptr) {
      node->left = (new Node(key, mapped, true));
      ++size_map;
      it = node->left;
      it->parrent = node;
      balance_map(node->left);
    } else {
      insert(node->left, key, mapped, it);
    }
  }
}

template <class Key, class T>
void s21::map<Key, T>::insert(Node* node, key_type key) {
  if (size_map == 0) {
    root = new Node(key);
    ++size_map;
  } else if (key > node->first) {
    if (node->right == nullptr) {
      node->right = (new Node(key, true));
      ++size_map;
      balance_map(node->right);
    } else
      insert(node->right, key);
  } else if (key < node->first) {
    if (node->left == nullptr) {
      node->left = (new Node(key, true));
      ++size_map;
      balance_map(node->left);
    } else
      insert(node->left, key);
  }
}

template <class Key, class T>
void s21::map<Key, T>::insert(const_iterator& it) {
  auto it_1 = insert_fix(it.const_it_node->first);
  it_1.it_node->second = it.const_it_node->second;
}

template <class Key, class T>
void s21::map<Key, T>::insert(iterator& it) {
  auto it_1 = insert_fix(it.it_node->first);
  it_1.it_node->second = it.it_node->second;
}

template<class Key, class T>
typename s21::map<Key, T>::iterator s21::map<Key, T>::insert_fix(Key key)
{
    Node* insert_node = new Node(key, true);
    if(size_map == 0)
    {
        root = insert_node;
        root->parrent = nullptr;
        ++size_map;
        root->is_red = false;
        return MapIterator(root);
    }
    else
    {
        Node* buf = root;
        Node* q = nullptr;
        if(buf->first == key)
        {
            delete insert_node;
            return nullptr;
        }
        while(buf != nullptr)
        {
            q = buf;
            if(key > buf->first)
                buf = buf->right;
            else 
                buf = buf->left;
            if(buf != nullptr && buf->first == key)
            {
                delete insert_node;
                return nullptr;
            }
        }
        insert_node->parrent = q;
        if(key < q->first)
            q->left = insert_node;
        else    
            q->right = insert_node;
    }
    ++size_map;
    balance_map(insert_node);
    return MapIterator(insert_node);
}

template <class Key, class T>
std::pair<typename s21::map<Key, T>::iterator, bool>
s21::map<Key, T>::insert_or_assign(const Key& key, const T& obj) {
  auto it = find(root, key);
  if (it != nullptr) {
    it->second = obj;
    return std::pair<iterator, bool>(it, false);
  } else
    return insert(std::pair<Key, T>(key, obj));
}

template <class Key, class T>
bool s21::map<Key, T>::contains(const Key& key) {
  return find(root, key) != nullptr;
}

template <typename key_type, typename mapped_type>
void s21::map<key_type, mapped_type>::clear(Node* node) {
  if (node == nullptr) return;
  clear(node->left);
  clear(node->right);
  delete node;
}

template <class Key, class T>
typename s21::map<Key, T>::iterator s21::map<Key, T>::find(Node* node,
                                                           Key key) {
  if (node == nullptr)
    return nullptr;
  else if (node->first == key)
    return node;
  else if (key > node->first)
    return find(node->right, key);
  else if (key < node->first)
    return find(node->left, key);
  return nullptr;
}

template <class Key, class T>
typename s21::map<Key, T>::iterator s21::map<Key, T>::get_min_pair(Node* node) {
  while (node->left != nullptr) node = node->left;
  return MapIterator(node);
}

template <class Key, class T>
typename s21::map<Key, T>::iterator s21::map<Key, T>::get_max_pair(Node* node) {
  while (node->right != nullptr) node = node->right;
  return MapIterator(node);
}

template <class Key, class T>
typename s21::map<Key, T>::const_iterator s21::map<Key, T>::get_min_pair_const(
    Node* node) const {
  while (node->left != nullptr) node = node->left;
  return MapConstIterator(node);
}

template <class Key, class T>
typename s21::map<Key, T>::const_iterator s21::map<Key, T>::get_max_pair_const(
    Node* node) const {
  while (node->right != nullptr) node = node->right;
  return MapConstIterator(node);
}

// balance

template <class Key, class T>
void s21::map<Key, T>::swap_nodes(Node* a, Node* b) {
  Key tmp = a->first;
  T tmp_1 = a->second;
  bool red_tmp = a->is_red;
  a->first = b->first;
  a->second = b->second;
  a->is_red = b->is_red;
  b->first = tmp;
  b->second = tmp_1;
  b->is_red = red_tmp;
}

template<class Key, class T>
void s21::map<Key, T>::swap_nodes_col_off(Node * a, Node * b)
{
  Key tmp = a->first;
  T tmp_1 = a->second;
  a->first = b->first;
  a->second = b->second;
  b->first = tmp;
  b->second = tmp_1;
}

template <class Key, class T>
void s21::map<Key, T>::right_rotate(Node* node) {
  swap_nodes(node, node->left);
  Node* temp = node->right;
  node->right = node->left;
  node->right->parrent = node;
  node->left = node->right->left;
  node->left->parrent = node;
  node->right->left = node->right->right;
  node->right->right = temp;
  if(node->right->right != nullptr)
    node->right->right->parrent = node->right;
}

template <class Key, class T>
void s21::map<Key, T>::left_rotate(Node* node) {
  swap_nodes(node, node->right);
  Node* temp = node->left;
  node->left = node->right;
  node->right = node->left->right;
  node->right->parrent = node;
  node->left->right = node->left->left;
  node->left->left = temp;
  if(node->left->left != nullptr)
    node->left->left->parrent = node->left;
}

template <class Key, class T>
void s21::map<Key, T>::balance_map(Node* node) {
  if (node->parrent == nullptr) return;
  Node* uncle = nullptr;
  while (node->parrent != nullptr && node->parrent->is_red) {
    if (node->parrent->parrent->left == node->parrent) {
        uncle = node->parrent->parrent->right;
      if (uncle != nullptr && uncle->is_red) {
        uncle->is_red = false;
        node->parrent->is_red = false;
        node->parrent->parrent->is_red = true;
        node = node->parrent->parrent;
      } else {
        if (node->parrent->right == node) 
        {
            node = node->parrent;
            left_rotate(node);
        }
        node->parrent->is_red = false;
        node->parrent->parrent->is_red = true;
        right_rotate(node->parrent->parrent);
      }
    } else {
        uncle = node->parrent->parrent->left;
      if (uncle != nullptr && uncle->is_red) {
        node->parrent->is_red = false;
        uncle->is_red = false;
        node->parrent->parrent->is_red = true;
        node = node->parrent->parrent;
      } else {
        //bool tmp = false;
        if (node->parrent->left == node) 
        {
            right_rotate(node->parrent);
            //tmp = true;
        }
        node->parrent->is_red = false;
        node->parrent->parrent->is_red = true;
        left_rotate(node->parrent->parrent);
        // if(tmp)
        //     node = node->parrent;
      }
    }
  }
  root->is_red = false;
}

template<class Key, class T>
void s21::map<Key, T>::balance_after_delete(Node * node)
{
  while((node == nullptr || !node->is_red) && node != root)
  {
    if(node->parrent->left == node->parrent)
    {
      if(node->parrent->right->is_red)
      {
        node->parrent->right->is_red = false;
        node->parrent->is_red = true;
        left_rotate(node->parrent);
      }
      if((node->parrent->right->left == nullptr || !node->parrent->right->left->is_red) && (node->parrent->right->right == nullptr || !node->parrent->right->right->is_red))
        node->parrent->right->is_red = true;
      else
      {
        if(node->parrent->right->right == nullptr || !node->parrent->right->right->is_red)
        {
          node->parrent->right->left->is_red = false;
          node->parrent->right->is_red = true;
          right_rotate(node->parrent->right);
        }
        node->parrent->right->is_red = node->parrent->is_red;
        node->parrent->is_red = false;
        node->parrent->right->right->is_red = false;
        left_rotate(node->parrent);
        root = node;
      }
    }
  }
  node->is_red = false;
  root->is_red = false;
}

template<class Key, class T>
void s21::map<Key, T>::delete_black_node_without_childs(Node * node)
{
  if(node->first < node->parrent->first) // node - left child
  {
    Node* brother = node->parrent->right;
    if(!brother->is_red)
    {
      if(brother->right != nullptr && brother->right->is_red)
      {
        brother->is_red = node->parrent->is_red;
        node->parrent->is_red = false;
        brother->right->is_red = false;
        left_rotate(node->parrent);   
      }
      else if(brother->left != nullptr && brother->left->is_red)
      {
        
        brother->is_red = true;
        brother->left->is_red = false;
        right_rotate(brother);
        delete_black_node_without_childs(node);
      }
      else
      {
      
        brother->is_red = true;
        bool tmp = node->parrent->is_red;
        node->parrent->is_red = false;
        if(!tmp)
          delete_black_node_without_childs(node->parrent);
      }
    }
    else 
    {
      brother->is_red = false;
      node->parrent->is_red = true;
      left_rotate(node->parrent);
    }

  }
  else // node - right child
  {
    Node* brother = node->parrent->left;
    if(!brother->is_red)
    {
      if(brother->left != nullptr && brother->left->is_red)
      {
        brother->is_red = node->parrent->is_red;
        node->parrent->is_red = false;
        brother->right->is_red = false;
        right_rotate(node->parrent);   
      }
      else if(brother->right != nullptr && brother->right->is_red)
      {
        brother->is_red = true;
        brother->right->is_red = false;
        left_rotate(brother);
        delete_black_node_without_childs(node);
      }
      else
      {
      
        brother->is_red = true;
        bool tmp = node->parrent->is_red;
        node->parrent->is_red = false;
        if(!tmp)
          delete_black_node_without_childs(node->parrent);
      }
    }
    else 
    {
      brother->is_red = false;
      node->parrent->is_red = true;
      right_rotate(node->parrent);
    }
  }
}