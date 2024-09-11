import { LightningElement } from 'lwc';
import FORM_FACTOR from '@salesforce/client/formFactor';

export default class FormFactorDemo extends LightningElement {
    showDesktopForm = false;
    showMobileForm = false;
    handleClick(){
        switch(FORM_FACTOR) {
            case 'Large':
                this.showMobileForm = false;
                this.showDesktopForm = true;
                break;
            case 'Medium':
                this.showMobileForm = false;
                this.showDesktopForm = true;
                break;
            case 'Small':
                this.showDesktopForm = false;
                this.showMobileForm = true;
            default:
        }
    }
}