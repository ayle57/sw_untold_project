<template>
  <div class="modal" v-if="visible">
    <div class="top-left-square"></div>
    <div class="top-right-point"></div>
    <div class="bottom-left-point"></div>
    <div class="titlebar">
      <h3 class="title">{{ title }}</h3>
      <CloseIcon @click="hide" class="close" fillColor="white"></CloseIcon>
    </div>
  </div>
</template>

<script lang="ts">
import { Vue, Component, Prop } from "vue-property-decorator";
import CloseIcon from "vue-material-design-icons/Close.vue";

@Component({
  components: { CloseIcon },
})
export default class Modal extends Vue {
  @Prop() readonly title?: boolean;
  @Prop({ default: false }) public visible!: boolean;

  public show() {
    this.visible = true;
  }

  public hide() {
    this.visible = false;
  }
}
</script>

<style lang="scss" scoped>
.modal {
  position: fixed;
  z-index: 100;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  outline: 1px solid white;
  outline-offset: -2px;
  border-bottom-right-radius: 30px;
  min-height: 300px;
  min-width: 500px;
  padding: 15px 20px;
  z-index: 1;

  &::before {
    content: "";
    position: absolute;
    top: -19px;
    right: -19px;
    background-color: black;
    border-bottom: 1px solid white;
    display: block;
    width: 40px;
    height: 40px;
    transform: rotate(45deg);
    z-index: 1;
  }

  &::after {
    content: "";
    position: absolute;
    bottom: -19px;
    left: -19px;
    background-color: black;
    border-top: 1px solid white;
    display: block;
    width: 40px;
    height: 40px;
    transform: rotate(45deg);
    z-index: 1;
  }

  .top-left-square {
    position: absolute;
    top: -5px;
    left: -5px;
    display: block;
    height: 10px;
    width: 10px;
    border: 1px solid #fffa;
    z-index: 10;

    &::after {
      content: "";
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      display: block;
      width: 1px;
      height: 1px;
      background-color: white;
      border-radius: 50%;
    }
  }

  .top-right-point,
  .bottom-left-point {
    position: absolute;
    display: block;
    height: 3px;
    width: 3px;
    background-color: white;
    border-radius: 50%;
    z-index: 10;
  }

  .top-right-point {
    top: 5px;
    right: 5px;
  }

  .bottom-left-point {
    bottom: 5px;
    left: 5px;
  }

  .titlebar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    color: white;

    .close {
      cursor: pointer;
    }
  }
}
</style>
